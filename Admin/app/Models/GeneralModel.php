<?php

namespace App\Models;

use CodeIgniter\Model;

class GeneralModel extends Model
{
    public function update_data_table($table = '', $where = array(), $upadte_data = array())
    {

        $db = $this->db;
        $builder = $db->table($table);
        $builder->where($where);
        $result = $builder->update($upadte_data);
        $return = array();

        if ($result) {
            $return = array('st' => 'success', 'txt' => 'success');
        } else {
            $return = array('st' => 'fail', 'txt' => 'update fail');
        }

        return $return;
    }
}