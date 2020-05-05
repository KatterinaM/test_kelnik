<?php
namespace C;

use M\Guest;
use M\Template;

class GuestBook
{
    public function __construct(){
        $this->contents = '';
    }

    public function action_index(){
        $mGuest = new Guest();
        if(count($_POST) > 0 and !empty($_POST['add_guest'])){
            $dtime = trim($_POST['dtime']);
            $name = trim($_POST['name']);
            $body = trim($_POST['body']);

            $id_guest = $mGuest->add($dtime, $name, $body);

            if($id_guest === false){
                $msg = $mGuest->lastError();
            }
        }
        else{
            $dtime = '';
            $name = '';
            $body = '';
            $msg = '';
        }

        $guest = $mGuest->all();

        $this->contents = Template::render('guest_table', [
            'guest' => $guest,
            'dtime' => $dtime,
            'name' => $name,
            'body' => $body,
            'msg' => $msg,

        ], ROOT);
    }

    public function render(){
        return Template::render('main', [
            'contents' => $this->contents
        ], ROOT);
    }
}