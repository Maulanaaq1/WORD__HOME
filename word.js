const firebaseConfig = {
    apiKey: "AIzaSyDCougF9lDyP70dCwngEQApRMgk6VPRj90",
    authDomain: "wordhome-9ffd0.firebaseapp.com",
    databaseURL: "https://wordhome-9ffd0-default-rtdb.firebaseio.com",
    projectId: "wordhome-9ffd0",
    storageBucket: "wordhome-9ffd0.firebasestorage.app",
    messagingSenderId: "907251172383",
    appId: "1:907251172383:web:d71150b40f0b274994c12a",
    measurementId: "G-WL5VGK0W4J"
  };

 // Inisialisasi Firebase
firebase.initializeApp(firebaseConfig);

// Referensi ke database
var WORD__HOMEDB = firebase.database().ref("WORD__HOME");

// Event listener form
document.getElementById('WORD__HOME').addEventListener('submit', SubmitForm);

function SubmitForm(e) {
    e.preventDefault();

    // Ambil nilai dari input
    var pemasukan = getElementVal('pemasukan');
    var asset = getElementVal('asset');
    var absen = getElementVal('absen');
    var pengeluaran = getElementVal('pengeluaran');
    var instalasi = getElementVal('instalasi');
    var pelanggan = getElementVal('pelanggan');

    // Simpan ke database (push biar auto id)
    var newData = WORD__HOMEDB.push();
    newData.set({
        pemasukan: pemasukan,
        asset: asset,
        absen: absen,
        pengeluaran: pengeluaran,
        instalasi: instalasi,
        pelanggan: pelanggan
    });

    alert("Data berhasil disimpan!");
    document.getElementById('WORD__HOME').reset();
}

// Fungsi ambil value input
function getElementVal(id) {
    return document.getElementById(id).value;
}
