<?php

App::uses('User', 'Model');

/**
 * User Test Case
 *
 */
class UserTest extends CakeTestCase {

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = array(
        'app.user'
    );

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp() {
        parent::setUp();
        $this->User = ClassRegistry::init('User');
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown() {
        unset($this->User);

        parent::tearDown();
    }

    /**
     * testgetActiveで取得したレコードは全てactiveカラムが1なこと method
     *
     * @return void
     */
    public function testgetActiveで取得したレコードは全てactiveカラムが1なこと() {
        $actives = $this->User->getActive();
        foreach ($actives as $row) {
            $this->assertEquals(1, $row['User']['active']);
        }
    }

}
