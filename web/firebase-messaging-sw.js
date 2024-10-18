importScripts('https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/8.10.0/firebase-messaging.js');

firebase.initializeApp({
  apiKey: 'AIzaSyC1NcedIvDX4MApD3XVsAPmf-wmHDckbYM',
  authDomain: 'flutterdemoapp-50dc1.firebaseapp.com',
  projectId: 'flutterdemoapp-50dc1',
  storageBucket: 'flutterdemoapp-50dc1.appspot.com',
  messagingSenderId: '489857739807',
  appId: '1:489857739807:web:cc8d2f9115491142d1792a',
});

const messaging = firebase.messaging();
