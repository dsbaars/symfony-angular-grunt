<?php

namespace Dsbaars\Bundle\DemoBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class DefaultController extends Controller
{
    /**
     * @Route("/")
     * @Template()
     */
    public function indexAction()
    {
        return array(

        );
    }

    /**
     * @Route("/partial/hello")
     * @Template()
     */
    public function helloAction()
    {
        return array(
            'hello' => 'Hello from Twig with curly braces'
        );
    }

    /**
     * @Route("/partial/demo")
     * @Template()
     */
    public function demoAction()
    {
        return array(
        );
    }
}
