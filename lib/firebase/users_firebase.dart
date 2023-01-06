import 'package:cloud_firestore/cloud_firestore.dart';
class UsersRepository {
  
    Stream<DocumentSnapshot> getUserNameByFirestore(String id){
    FirebaseFirestore db = FirebaseFirestore.instance;
    return db.collection('Usuarios').doc("$id").snapshots();
  }

}