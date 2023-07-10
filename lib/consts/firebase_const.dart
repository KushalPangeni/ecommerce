import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

//Collections
const userCollection = "users";
FirebaseAuth auth = FirebaseAuth.instance;
User? currentUser = auth.currentUser;

FirebaseFirestore firestore = FirebaseFirestore.instance;
