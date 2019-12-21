<?php

/**
 * Control Form Functinal Tests
 * 
 * @group Functional
 */
class Test_Functional_Form extends FunctionalTestCase
{
    public function test_入力ページにアクセス()
    {
        try
        {
            static::$crawler = static::$client->request('GET', static::open('form'));
        }
        catch (Exception $e)
        {
            echo $e->getMessage(), PHP_EOL. 'Error: レスポンスエラーです。' , PHP_EOL;
            exit;
        }

        // var_dump(static::$client->getResponse()->getContent());
        // exit;

        $this->assertNotNull(static::$crawler);
    }

    public function test_レスポンスコードが200であることを確認()
    {
        $this->assertEquals(200, static::$client->getResponse()->getStatus());
    }

    public function test_レスポンスヘッダのContentTypeを確認()
    {
        $test = static::$client->getResponse()->getHeader('Content-Type');
        $expected = 'text/html; charset=UTF-8';
        $this->assertEquals($expected, $test);
    }

    public function test_titleとh1の確認()
    {
        $test = 'コンタクトフォーム';
        $this->assertEquals($test, static::$crawler->filter('title')->text());

        $this->assertEquals('お問い合わせ', static::$crawler->filter('h1')->text());
    }
}