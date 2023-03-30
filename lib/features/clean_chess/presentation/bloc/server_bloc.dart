import 'package:cleanchess/core/errors/failure.dart';
import 'package:cleanchess/core/utilities/empty.dart';
import 'package:cleanchess/core/utilities/mixins/access_token_provider.dart';
import 'package:cleanchess/features/clean_chess/domain/usecases/account/account.dart';
import 'package:cleanchess/features/clean_chess/domain/usecases/oauth/lichess/lichess_gain_access_token.dart';
import 'package:cleanchess/features/clean_chess/domain/usecases/oauth/lichess/lichess_oauth.dart';
import 'package:cleanchess/features/clean_chess/domain/usecases/oauth/lichess/lichess_revoke_token.dart';
import 'package:cleanchess/features/clean_chess/domain/usecases/socials/socials.dart';
import 'package:cleanchess/features/clean_chess/domain/usecases/teams/teams.dart';
import 'package:cleanchess/features/clean_chess/domain/usecases/tv/get_current_tv_games.dart';
import 'package:cleanchess/features/clean_chess/domain/usecases/users/users.dart';
import 'package:cleanchess/features/clean_chess/presentation/bloc/event/event.dart';
import 'package:cleanchess/features/clean_chess/presentation/bloc/event/tv_event.dart';
import 'package:cleanchess/features/clean_chess/presentation/bloc/server_event.dart';
import 'package:cleanchess/features/clean_chess/presentation/bloc/server_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lichess_client_dio/lichess_client_dio.dart';
import 'package:cleanchess/core/utilities/extentions.dart';

class ServerBloc extends Bloc<ServerEvent, ServerState> {
  final LichessTokenProvider tokenProvider;

  //#region OAuth UseCases
  final LichessRevokeToken revokeToken;
  //#endregion

  //#region Account UseCases
  final LichessGainAccessToken gainAccessToken;
  final GetMyProfile getMyProfile;
  final GetMyEmail getMyEmail;
  final GetMyKidModeStatus getMyKidModeStatus;
  final SetMyKidModeStatus setMyKidModeStatus;
  final GetMyPreferences getMyPreferences;
  //#endregion

  //#region Teams UseCases
  final GetTeamsByUser getTeamsByUser;
  final GetTeamById getTeamById;
  final GetTeamMembers getTeamMembers;
  final GetTeamJoinRequests getTeamJoinRequests;
  final AcceptJoinRequest acceptJoinRequest;
  final KickMemberFromTeam kickMemberFromTeam;
  final DeclineJoinRequest declineJoinRequest;
  final JoinTeam joinTeam;
  final LeaveTeam leaveTeam;
  final MessageAllMembers messageAllMembers;
  final SearchTeamByName searchTeamByName;
  final GetPopularTeams searchPopularTeams;
  //#endregion

  //#region User UseCases
  final SearchUserByTerm searchUsersByTerm;
  final SearchUsernamesByTerm getUsernamesByTerm;
  final GetRealtimeStatus getRealtimeStatus;
  final GetTop10Players getTop10Players;
  final GetChessVariantLeaderboard getChessVariantLeaderboard;
  final GetPublicData getPublicData;
  final GetRatingHistory getRatingHistory;
  final GetManyByIds getManyByIds;
  final GetLiveStreamers getLiveStreamers;
  //#endregion

  //#region Socials UseCases
  final GetFollowingUsers getFollowingUsers;
  final FollowUser followUser;
  final UnfollowUser unfollowUser;
  //#endregion

  //#region Tv
  // here are all usecases, so let's start from there!
  // okay how do we define a usecase?
  // GetCurrentTvGames? Yup, i'll take a quick look at the function name u gave on lichessClient and if it requires data (don't think but just to be sure)
  // in case we need data, the usecase should ask for them to the bloc
  final GetCurrentTvGames getCurrentTvGames;
  //#endregion

  ServerBloc({
    required this.tokenProvider,
    required this.revokeToken,
    required this.gainAccessToken,
    required this.getMyProfile,
    required this.getMyEmail,
    required this.getMyKidModeStatus,
    required this.setMyKidModeStatus,
    required this.getMyPreferences,
    required this.getTeamsByUser,
    required this.getTeamById,
    required this.getTeamMembers,
    required this.getTeamJoinRequests,
    required this.acceptJoinRequest,
    required this.declineJoinRequest,
    required this.kickMemberFromTeam,
    required this.joinTeam,
    required this.leaveTeam,
    required this.messageAllMembers,
    required this.searchTeamByName,
    required this.searchPopularTeams,
    required this.searchUsersByTerm,
    required this.getUsernamesByTerm,
    required this.getRealtimeStatus,
    required this.getTop10Players,
    required this.getChessVariantLeaderboard,
    required this.getPublicData,
    required this.getRatingHistory,
    required this.getManyByIds,
    required this.getLiveStreamers,
    required this.getFollowingUsers,
    required this.followUser,
    required this.unfollowUser,
    required this.getCurrentTvGames, // we are calling it from outside so we can inject it and then test it
  }) : super(LichessInitial()) {
    //#region OAuth Events

    //#endregion

    //#region Account Events
    on<GetMyProfileEvent>((event, emit) async {
      emit(LichessLoading());
      final user = await getMyProfile.call();

      user.fold(
        (failure) => emit(LichessError(failure)),
        (user) => emit(LichessUserFetched(user)),
      );
    });
    on<GetMyEmailEvent>((event, emit) async {
      emit(LichessLoading());
      final email = await getMyEmail.call();

      email.fold(
        (failure) => emit(LichessError(failure)),
        (email) => emit(LichessLoaded<String>(email)),
      );
    });
    on<GetMyKidModeStatusEvent>((event, emit) async {
      emit(LichessLoading());
      final kidModeStatus = await getMyKidModeStatus.call();

      kidModeStatus.fold(
        (failure) => emit(LichessError(failure)),
        (kidModeStatus) => emit(LichessLoaded<bool>(kidModeStatus)),
      );
    });
    on<SetMyKidModeStatusEvent>((event, emit) async {
      emit(LichessLoading());
      final kidModeStatus = await setMyKidModeStatus.call(event.kidModeStatus);

      kidModeStatus.fold(
        (failure) => emit(LichessError(failure)),
        (kidModeStatus) => emit(const LichessLoaded<Empty>(Empty())),
      );
    });
    on<GetMyPreferencesEvent>((event, emit) async {
      emit(LichessLoading());
      final preferences = await getMyPreferences.call();

      preferences.fold(
        (failure) => emit(LichessError(failure)),
        (preferences) => emit(LichessLoaded<UserPreferences>(preferences)),
      );
    });
    //#endregion

    //#region Teams Events
    on<GetTeamsByUserIdEvent>((event, emit) async {
      emit(LichessLoading());
      final teams = await getTeamsByUser.call(event.userId);

      teams.fold(
        (failure) => emit(LichessError(failure)),
        (teams) => emit(LichessLoaded<List<Team>>(teams)),
      );
    });
    on<GetTeamByIdEvent>((event, emit) async {
      emit(LichessLoading());
      final team = await getTeamById.call(event.teamId);

      team.fold(
        (failure) => emit(LichessError(failure)),
        (team) => emit(LichessLoaded<Team>(team)),
      );
    });
    on<GetTeamMembersEvent>((event, emit) async {
      emit(LichessLoading());
      final members = await getTeamMembers.call(
        GetTeamMembersParams(
          event.teamId,
          event.maxMembers,
        ),
      );

      members.fold(
        (failure) => emit(LichessError(failure)),
        (members) => emit(LichessLoaded<List<User>>(members)),
      );
    });
    on<GetTeamJoinRequestsEvent>((event, emit) async {
      emit(LichessLoading());
      final joinRequests = await getTeamJoinRequests.call(event.teamId);

      joinRequests.fold(
        (failure) => emit(LichessError(failure)),
        (joinRequests) => emit(LichessLoaded<List<JoinRequest>>(joinRequests)),
      );
    });
    on<AcceptJoinRequestEvent>((event, emit) async {
      emit(LichessLoading());
      final joinRequest = await acceptJoinRequest.call(
        AcceptJoinRequestParams(
          event.teamId,
          event.userId,
        ),
      );

      joinRequest.fold(
        (failure) => emit(LichessError(failure)),
        (joinRequest) => emit(const LichessLoaded<Empty>(Empty())),
      );
    });
    on<DeclineJoinRequestEvent>((event, emit) async {
      emit(LichessLoading());
      final joinRequest = await declineJoinRequest.call(
        DeclineJoinRequestParams(
          event.teamId,
          event.userId,
        ),
      );

      joinRequest.fold(
        (failure) => emit(LichessError(failure)),
        (joinRequest) => emit(const LichessLoaded<Empty>(Empty())),
      );
    });
    on<KickMemberFromTeamEvent>((event, emit) async {
      emit(LichessLoading());
      final kickMember = await kickMemberFromTeam.call(
        KickMemberFromTeamParams(
          event.teamId,
          event.userId,
        ),
      );

      kickMember.fold(
        (failure) => emit(LichessError(failure)),
        (kickMember) => emit(const LichessLoaded<Empty>(Empty())),
      );
    });
    on<JoinTeamEvent>((event, emit) async {
      emit(LichessLoading());
      final join = await joinTeam.call(
        JoinTeamParams(
          event.teamId,
          message: event.message,
          passwrord: event.password,
        ),
      );

      join.fold(
        (failure) => emit(LichessError(failure)),
        (join) => emit(const LichessLoaded<Empty>(Empty())),
      );
    });
    on<LeaveTeamEvent>((event, emit) async {
      emit(LichessLoading());
      final leave = await leaveTeam.call(event.teamId);

      leave.fold(
        (failure) => emit(LichessError(failure)),
        (leave) => emit(const LichessLoaded<Empty>(Empty())),
      );
    });
    on<MessageAllMembersEvent>((event, emit) async {
      emit(LichessLoading());
      final message = await messageAllMembers.call(
        MessageAllMembersParams(
          event.teamId,
          event.message,
        ),
      );

      message.fold(
        (failure) => emit(LichessError(failure)),
        (tournaments) => emit(const LichessLoaded<Empty>(Empty())),
      );
    });
    on<SearchTeamByNameEvent>((event, emit) async {
      emit(LichessLoading());
      final teams = await searchTeamByName.call(
        SearchTeamByNameParams(
          event.teamName,
          event.page,
        ),
      );

      teams.fold(
        (failure) => emit(LichessError(failure)),
        (tournaments) => emit(LichessLoaded<PageOf<Team>>(tournaments)),
      );
    });
    on<GetPopularTeamsEvent>((event, emit) async {
      emit(LichessLoading());
      final teams = await searchPopularTeams.call(event.page);

      teams.fold(
        (failure) => emit(LichessError(failure)),
        (data) => emit(LichessLoaded<PageOf<Team>>(data)),
      );
    });
    //#endregion

    //#region User Events
    on<SearchUsersByTermEvent>(
      (event, emit) async {
        emit(LichessLoading());
        final users = await searchUsersByTerm.call(
          SearchUsersByTermParams(
            event.term,
            event.friend,
          ),
        );

        users.fold(
          (failure) => emit(LichessError(failure)),
          (data) => emit(LichessLoaded<List<User>>(data)),
        );
      },
    );
    on<SearchUsernamesByTermEvent>(
      (event, emit) async {
        emit(LichessLoading());
        final users = await getUsernamesByTerm.call(
          SearchUsernamesByTermParams(
            event.term,
            event.friend,
          ),
        );

        users.fold(
          (failure) => emit(LichessError(failure)),
          (data) => emit(LichessLoaded<List<String>>(data)),
        );
      },
    );
    on<GetRealtimeStatusEvent>(
      (event, emit) async {
        emit(LichessLoading());
        final status = await getRealtimeStatus.call(
          GetRealtimeStatusParams(
            event.ids,
            event.withGameIds,
          ),
        );

        status.fold(
          (failure) => emit(LichessError(failure)),
          (data) => emit(LichessRealTimeStatsFetched(data)),
        );
      },
    );
    on<GetTop10PlayersEvent>(
      (event, emit) async {
        emit(LichessLoading());
        final users = await getTop10Players.call();

        users.fold(
          (failure) => emit(LichessError(failure)),
          (data) => emit(LichessLoaded<Map<String, List<User>>>(data)),
        );
      },
    );
    on<GetChessVariantLeaderboardEvent>(
      (event, emit) async {
        emit(LichessLoading());
        final users = await getChessVariantLeaderboard.call(
          GetChessVariantLeaderboardParams(
            event.perfType,
            event.nb,
          ),
        );

        users.fold(
          (failure) => emit(LichessError(failure)),
          (data) => emit(LichessLoaded<List<User>>(data)),
        );
      },
    );
    on<GetPublicDataEvent>(
      (event, emit) async {
        emit(LichessLoading());
        final user = await getPublicData.call(
          GetPublicDataParams(
            event.username,
            trophies: event.trophies,
          ),
        );

        user.fold(
          (failure) => emit(LichessError(failure)),
          (data) => emit(LichessLoaded<User>(data)),
        );
      },
    );
    on<GetRatingHistoryEvent>(
      (event, emit) async {
        emit(LichessLoading());
        final user = await getRatingHistory.call(event.username);

        user.fold(
          (failure) => emit(LichessError(failure)),
          (data) => emit(LichessLoaded<List<RatingHistory>>(data)),
        );
      },
    );
    on<GetManyByIdsEvent>(
      (event, emit) async {
        emit(LichessLoading());
        final users = await getManyByIds.call(event.ids);

        users.fold(
          (failure) => emit(LichessError(failure)),
          (data) => emit(LichessLoaded<List<User>>(data)),
        );
      },
    );
    on<GetLiveStreamersEvent>(
      (event, emit) async {
        emit(LichessLoading());
        final users = await getLiveStreamers.call();

        users.fold(
          (failure) => emit(LichessError(failure)),
          (data) => emit(LichessLoaded<List<User>>(data)),
        );
      },
    );
    //#endregion

    //#region Social Events
    on<GetFollowingUsersEvent>(
      (event, emit) async {
        emit(LichessLoading());
        final user = await getFollowingUsers.call();

        user.fold(
          (failure) => emit(LichessError(failure)),
          (data) => emit(LichessFollowingUsersFetched(data)),
        );
      },
    );
    on<FollowUserEvent>(
      (event, emit) async {
        emit(LichessLoading());
        final user = await followUser.call(event.username);

        user.fold(
          (failure) => emit(LichessError(failure)),
          (data) => emit(LichessLoaded<bool>(data)),
        );
      },
    );
    on<UnfollowUserEvent>(
      (event, emit) async {
        emit(LichessLoading());
        final user = await unfollowUser.call(event.username);

        user.fold(
          (failure) => emit(LichessError(failure)),
          (data) => emit(LichessLoaded<bool>(data)),
        );
      },
    );
    //#endregion
    //#region Tv Api

    // we need an event to call this
    on<GetStreamingGames>((event, emit) async {
      emit(LichessLoading());

      final streamingGames = await getCurrentTvGames.call();

      // we may use the generic Success state, but i don't like it!
      // let's create a custom state for this event

      streamingGames.fold(
        (failure) => emit(LichessError(failure)),
        (data) => emit(const LichessStreamingGamesFetched()),
      );
    });

    //#endregion
  }
}
