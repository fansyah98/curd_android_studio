package almasfairuz.blogspot.com;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.AsyncTask;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import java.util.HashMap;

public class edit_data_burung extends AppCompatActivity implements View.OnClickListener{
    private EditText editTextId;
    private EditText editTextName;
    private EditText editTextKategori;
    private EditText editTextHarga;
    private Button buttonUpdate;
    private Button buttonDelete;
    private String id;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_edit_data_burung);
        Intent intent = getIntent();
        id = intent.getStringExtra(konfigurasi.MHS_ID);
        editTextId = (EditText) findViewById(R.id.editTextID);
        editTextName = (EditText) findViewById(R.id.editTextName);
        editTextKategori = (EditText) findViewById(R.id.editTextKategori);
        editTextHarga = (EditText) findViewById(R.id.editTextHarga);
        buttonUpdate = (Button) findViewById(R.id.buttonUpdate);
        buttonDelete = (Button) findViewById(R.id.buttonDelete);
        buttonUpdate.setOnClickListener(this);
        buttonDelete.setOnClickListener(this);
        editTextId.setText(id);
        getMhs();
    }
    private void getMhs(){
        class GetMhs extends AsyncTask<Void,Void,String>{ ProgressDialog loading;
            @Override
            protected void onPreExecute() { super.onPreExecute();
                loading = ProgressDialog.show(edit_data_burung.this,"Fetching...","Wait...",false,false);
            }
            @Override
            protected void onPostExecute(String s) {
                super.onPostExecute(s);
                loading.dismiss();
                showMhs(s);
            }
            @Override
            protected String doInBackground(Void... params) { RequestHandler rh = new RequestHandler();
                String s = rh.sendGetRequestParam(konfigurasi.URL_GET_EMP,id);
                return s;
            }
        }
        GetMhs ge = new GetMhs();
        ge.execute();
    }
    private void showMhs(String json){
        try {
            JSONObject jsonObject = new JSONObject(json);
            JSONArray result = jsonObject.getJSONArray(konfigurasi.TAG_JSON_ARRAY);
            JSONObject c = result.getJSONObject(0);
            String name = c.getString(konfigurasi.TAG_NAMA);
            String kategori = c.getString(konfigurasi.TAG_KATEGORI);
            String harga = c.getString(konfigurasi.TAG_HARGA);
            editTextName.setText(name);
            editTextKategori.setText(kategori);
            editTextHarga.setText(harga);

        }
        catch (JSONException e) { e.printStackTrace();
        }
    }
    private void updateMhs(){
        final String name = editTextName.getText().toString().trim();
        final String kategori = editTextKategori.getText().toString().trim();
        final String harga = editTextHarga.getText().toString().trim();
        class UpdateMhs extends AsyncTask<Void,Void,String>{ ProgressDialog loading;
            @Override
            protected void onPreExecute() {
                super.onPreExecute();
                loading = ProgressDialog.show(edit_data_burung.this,"Updating...","Wait...",false,
                        false);
            }
            @Override
            protected void onPostExecute(String s) {
                super.onPostExecute(s);
                loading.dismiss();
                Toast.makeText(edit_data_burung.this,s,Toast.LENGTH_LONG).show();
            }
            @Override
            protected String doInBackground(Void... params) { HashMap<String,String> hashMap = new HashMap<>();
                hashMap.put(konfigurasi.KEY_BR_ID,id);
                hashMap.put(konfigurasi.KEY_BR_NAMA,name);
                hashMap.put(konfigurasi.KEY_BR_KATEGORI,kategori);
                hashMap.put(konfigurasi.KEY_BR_HARGA,harga);
                RequestHandler rh = new RequestHandler();
                String s = rh.sendPostRequest(konfigurasi.URL_UPDATE_EMP,hashMap);
                return s;
            }
        }
        UpdateMhs ue = new UpdateMhs();
        ue.execute();
    }
    private void deleteMhs(){
        class DeleteMhs extends AsyncTask<Void,Void,String> { ProgressDialog loading;
            @Override
            protected void onPreExecute() {
                super.onPreExecute();
                loading = ProgressDialog.show(edit_data_burung.this, "Updating...", "Tunggu...", false, false);
            }
            @Override
            protected void onPostExecute(String s) {
                super.onPostExecute(s);
                loading.dismiss();
                Toast.makeText(edit_data_burung.this, s, Toast.LENGTH_LONG).show();
            }
            @Override
            protected String doInBackground(Void... params) { RequestHandler rh = new RequestHandler();
                String s = rh.sendGetRequestParam(konfigurasi.URL_DELETE_EMP, id);
                return s;
            }
        }
        DeleteMhs de = new DeleteMhs();
        de.execute();
    }
    private void confirmDeleteMhs(){
        AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(this);
        alertDialogBuilder.setMessage("Apakah Kamu Yakin Ingin Menghapus Data ini?");
        alertDialogBuilder.setPositiveButton("Ya", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface arg0, int arg1) {
                        deleteMhs();
                        startActivity(new Intent(edit_data_burung.this,tampil_semua_burung.class));
                    }
                }
        );
        alertDialogBuilder.setNegativeButton("Tidak", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface arg0, int arg1) { } });
        AlertDialog alertDialog = alertDialogBuilder.create();
        alertDialog.show();
    }
    @Override
    public void onClick(View v) { if(v == buttonUpdate){ updateMhs();
    }
        if(v == buttonDelete){ confirmDeleteMhs();
        }
    }
}
