<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Siswa extends Model
{
    protected $table = 'siswa';
    protected $fillable =['nama_belakang','nama_depan','jenis_kelamin','agama','alamat','avatar','user_id'];

    public function getAvatar()
    {
    	if(!$this->avatar){
    		return asset('images/default.jpg');
    	}
    	return asset('images/'.$this->avatar);
    }

   public function mapel()
   {
   		return $this->belongsToMany(Mapel::class)->withPivot(['nilai'])->withTimeStamps();
   }


   public function rataRataNilai()
   { 
        If($this->mapel->isNotEmpty()){
    $total =0;
        $hitung=0;
        foreach ($this->mapel as $mapel) {
          $total += $mapel->pivot->nilai;
          $hitung ++;
    }

    //jika belum ada return 0
    return $total != 0 ? round($total/$hitung) : $total;;
    }
  }
   public function nama_lengkap()
    {
      return $this->nama_depan.''.$this->nama_belakang;
    }

}
