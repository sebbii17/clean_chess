import 'package:clean_chess/chess/core/utilities/enums.dart';
import 'package:equatable/equatable.dart';

class Fen with EquatableMixin {
  final String fen;
  final PieceColor turn;
  //TODO: add castling, en passant, halfmove clock, fullmove number

  Fen(this.fen, this.turn);

  // r6k/pp2r2p/4Rp1Q/3p4/8/1N1P2R1/PqP2bPP/7K b - - 0 24,
  Fen.fromRaw(String fen)
      : fen = fen.split(" ").first,
        turn = fen.split(" ")[1] == "b" ? PieceColor.black : PieceColor.white;

  @override
  List<Object?> get props => [fen, turn];
}
