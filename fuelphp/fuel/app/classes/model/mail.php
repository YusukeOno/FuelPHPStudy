<?php

class Model_Mail extends Model
{
    /**
     * メールを作成し送信する
     * 
     * @param array $post
     * @return void
     * @throws \EmailValidationFailedException
     * @throws \EmailSendingFailedException
     * @throws \FuelException
     */
    public function send($post)
    {
        $data = $this->build_mail($post);
        $this->sendmail($data);
    }

    // メールの作成
    protected function build_mail($post)
    {
        $data['from']      = $post['email'];
        $data['from_name'] = $post['name'];
        $data['to']        = 'info@example.jp';
        $data['to_name']   = '管理者';
        $data['subject']   = 'コンタクトフォーム';

        $ip    = Input::ip();
        $agent = input::user_agent();

        $data['body'] = <<< END
------------------------------------------------------------
名前: {$post['name']}
メールアドレス: {$post['email']}
IPアドレス: $ip
ブラウザ: $agent
------------------------------------------------------------
コメント:
{$post['comment']}
------------------------------------------------------------
END;

        return $data;
    }

    // メールの送信
    protected function sendmail($data)
    {
        Package::load('email');

        $email = Email::forge();
        $email->from($data['from'], $data['from_name']);
        $email->to($data['to'], $data['to_name']);
        $email->subject($data['subject']);
        $email->body($data['body']);

        $email->send();
    }
}