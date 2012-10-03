<?php

namespace ServerGrove\Bundle\DemoBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class DefaultController extends Controller
{
    /**
     * @Route("/hello/{name}")
     * @Route("/", defaults={"name" = "Boca Raton"})
     * @Template()
     */
    public function indexAction($name)
    {
        return array('name' => $name);
    }
}
