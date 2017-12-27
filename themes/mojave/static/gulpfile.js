var gulp = require('gulp'),
    autoprefixer = require('gulp-autoprefixer'),
    cssnano = require('gulp-cssnano'),
    rename = require('gulp-rename'),
    concat = require('gulp-concat'),
    del = require('del');

gulp.task('styles', function() {
  return gulp.src(['./css/normalize.min.css', './css/font-awesome.min.css', './css/main.css'])
    .pipe(autoprefixer('last 2 version'))
    .pipe(concat('merged.css'))
    .pipe(rename({suffix: '.min'}))
    .pipe(cssnano())
    .pipe(gulp.dest('./css/'))
});

gulp.task('clean', function() {
    return del(['./css/merged.min.css']);
});

gulp.task('default', ['clean'], function() {
    gulp.start('styles');
});
