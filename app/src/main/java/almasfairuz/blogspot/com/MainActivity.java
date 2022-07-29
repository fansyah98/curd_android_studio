package almasfairuz.blogspot.com;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;
import java.util.HashMap;

public   class MainActivity extends AppCompatActivity implements  View.OnClickListener {
    private EditText editTextName;
    private EditText editTextKategori;
    private EditText editTextHarga;
    private Button buttonAdd;
    private Button buttonView;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        editTextName = (EditText) findViewById(R.id.editTextName);
        editTextKategori = (EditText) findViewById(R.id.editTextKategori);
        editTextHarga = (EditText) findViewById(R.id.editTextHarga);
        buttonAdd = (Button) findViewById(R.id.buttonAdd);
        buttonView = (Button) findViewById(R.id.buttonView);

        buttonAdd.setOnClickListener(this);
        buttonView.setOnClickListener(this);
    }

    private void addMhs(){
        final String name = editTextName.getText().toString().trim();
        final String kategori = editTextKategori.getText().toString().trim();
        final String harga = editTextHarga.getText().toString().trim();


        class AddMhs extends AsyncTask<Void,Void,String>{
            ProgressDialog loading;
            @Override protected void onPreExecute() {
                super.onPreExecute();
                loading = ProgressDialog.show(MainActivity.this,"Menambahkan...","Tunggu...",false,false);
            }
            @Override
            protected void onPostExecute(String s) {
                super.onPostExecute(s);
                loading.dismiss();
                Toast.makeText(MainActivity.this,s,Toast.LENGTH_LONG).show();
            }
            @Override
            protected String doInBackground(Void... v) {
                HashMap<String,String> params = new HashMap<>();
                params.put(konfigurasi.KEY_BR_NAMA,name);
                params.put(konfigurasi.KEY_BR_KATEGORI,kategori);
                params.put(konfigurasi.KEY_BR_HARGA,harga);


                RequestHandler rh = new RequestHandler();
                String res = rh.sendPostRequest(konfigurasi.URL_ADD, params);
                Log.d("res",res);
                return res;
            }
        }
        AddMhs ae = new AddMhs();
        ae.execute();
    }
    @Override
    public void onClick(View v) {
        if(v == buttonAdd){
            addMhs();
        }
        if(v == buttonView){
            startActivity(new Intent(this,tampil_semua_burung.class));
        }
    }
}
