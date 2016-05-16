<?php

namespace Dsbaars\Bundle\NodejsToolBundle\Composer;

use Sensio\Bundle\DistributionBundle\Composer\ScriptHandler as BaseScriptHandler;
use Symfony\Component\ClassLoader\ClassCollectionLoader;
use Symfony\Component\Process\Process;

class ScriptHandler extends BaseScriptHandler
{
    public static function checkToolAvailability($event)
    {
        $process = new Process('which npm', null, null, null, 300);
        $process->run(
            function ($type, $buffer) {
                echo $buffer;
            }
        );

        if (!$process->isSuccessful()) {
            throw new \RuntimeException(
                'It looks like you don\'t have the node package manager (npm) installed. ' .
                'You can download this from http:///nodejs.org.'
            );
        }

        $process = new Process('which bower', null, null, null, 300);
        $process->run(
            function ($type, $buffer) {
                echo $buffer;
            }
        );
        if (!$process->isSuccessful()) {
            throw new \RuntimeException(
                'It looks like you don\'t have bower installed (globally). ' .
                'You can do this using \'npm install -g bower\'.'
            );
        }
    }


    public static function installNpmAssets($event)
    {
        $process = new Process('npm install || true', null, null, null, 300);
        $process->run(
            function ($type, $buffer) {
                echo $buffer;
            }
        );

        if (!$process->isSuccessful()) {
            throw new \RuntimeException(
                sprintf(
                    'An error occurred when executing the "%s" command.',
                    escapeshellarg($cmd)
                )
            );
        }
    }

    public static function installBowerAssets($event)
    {
        $process = new Process('bower install', null, null, null, 300);
        $process->run(
            function ($type, $buffer) {
                echo $buffer;
            }
        );

        if (!$process->isSuccessful()) {
            throw new \RuntimeException(
                sprintf(
                    'An error occurred when executing the "%s" command.',
                    escapeshellarg($cmd)
                )
            );
        }
    }
}
