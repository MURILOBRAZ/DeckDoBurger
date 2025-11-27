import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Cardapio
class CardapioRecord extends FirestoreRecord {
  CardapioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "specifications" field.
  String? _specifications;
  String get specifications => _specifications ?? '';
  bool hasSpecifications() => _specifications != null;

  // "Fotos" field.
  String? _fotos;
  String get fotos => _fotos ?? '';
  bool hasFotos() => _fotos != null;

  // "Preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  bool hasPreco() => _preco != null;

  // "Tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _fotos = snapshotData['Fotos'] as String?;
    _preco = castToType<double>(snapshotData['Preco']);
    _tipo = snapshotData['Tipo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Cardapio');

  static Stream<CardapioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CardapioRecord.fromSnapshot(s));

  static Future<CardapioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CardapioRecord.fromSnapshot(s));

  static CardapioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CardapioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CardapioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CardapioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CardapioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CardapioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCardapioRecordData({
  String? name,
  String? description,
  String? specifications,
  String? fotos,
  double? preco,
  String? tipo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'specifications': specifications,
      'Fotos': fotos,
      'Preco': preco,
      'Tipo': tipo,
    }.withoutNulls,
  );

  return firestoreData;
}

class CardapioRecordDocumentEquality implements Equality<CardapioRecord> {
  const CardapioRecordDocumentEquality();

  @override
  bool equals(CardapioRecord? e1, CardapioRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.specifications == e2?.specifications &&
        e1?.fotos == e2?.fotos &&
        e1?.preco == e2?.preco &&
        e1?.tipo == e2?.tipo;
  }

  @override
  int hash(CardapioRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.specifications,
        e?.fotos,
        e?.preco,
        e?.tipo
      ]);

  @override
  bool isValidKey(Object? o) => o is CardapioRecord;
}
