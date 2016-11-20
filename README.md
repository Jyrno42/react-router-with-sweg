# React Router [![npm package][npm-badge]][npm]

This is a fork of [React Router](https://github.com/reactjs/react-router) with SWEG.

Note: This repo contains only the release scripts and patches

## What is SWEG?

In short, SWEG adds an extra argument to your route tranistion hooks, e.g.

##### `onEnter(nextState, theSweg, replace, callback?)`

Instead of: `onEnter(nextState, replace, callback?)`

##### `onChange(prevState, nextState, theSweg, replace, callback?)`

Instead of: `onChange(prevState, nextState, replace, callback?)`

##### `onLeave(prevState, theSweg)`

Instead of: `onLeave(prevState)`

wher theSweg can be created by providing eiter:

1. `const getSweg() => ({ foo: bar, });` prop to `<Router>` component
2. by adding an extra argument (third) to match call, e.g: `match(opts, callback, getSweg = () => ({ foo: bar, }))`

# Looking for the real repo?

https://github.com/reactjs/react-router

[npm-badge]: https://img.shields.io/npm/v/react-router-with-sweg.svg?style=flat-square
[npm]: https://www.npmjs.org/package/react-router-with-sweg

