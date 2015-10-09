/* jshint esnext: true */

import gulp from 'gulp';
import {exec, spawn, execSync} from 'child_process';

var desc = text => console.log(text);
var raise = error => console.error(error);

gulp.task('install', [], function () {
});

gulp.task('uninstall', function () {
});

gulp.task('brew', cb => {
    desc('Update or Install Brew');

    exec('which brew > /dev/null || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"',
    (err, stdout, stderr) => {
        if (err !== null) {
            raise(`Homebrew must be installed before continuing.`);
        }
        cb(err);
    });
});

gulp.tash('brew_cask', cb => {
    desc('Install Homebrew Cask');
    console.log(execSync());
});

gulp.task('default', ['install']);
