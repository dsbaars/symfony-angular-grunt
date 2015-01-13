<?php

namespace Dsbaars\Bundle\DemoBundle\ApiController;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use JMS\DiExtraBundle\Annotation as DI;
use Nelmio\ApiDocBundle\Annotation\ApiDoc;
use FOS\RestBundle\Controller\FOSRestController;
use FOS\RestBundle\View\View;

/**
* @package DsbaarsDemoBundle
* @subpackage ApiController
*/
class DefaultController extends FOSRestController
{
    /** @DI\Inject("doctrine.orm.entity_manager") */
    private $em;

    /**
    * This does nothing, but I wanted to demonstrate how easy it can be to create an REST API
    * Check out /api/doc for swagger
    *
    * @Route("demo",
    *   options={"expose"=true}
    *  )
    * @Method({"GET"})
    * @ApiDoc()
    */
    public function indexAction()
    {
        return array();
    }
}
