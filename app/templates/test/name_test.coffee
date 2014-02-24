'use strict'

<%= safeSlugname %> = require('../lib/<%= slugname %>.js')

###
  ======== A Handy Little Nodeunit Reference ========
  https://github.com/caolan/nodeunit

  Test methods:
    test.expect(numAssertions)
    test.done()
  Test assertions:
    test.ok(value, [message])
    test.equal(actual, expected, [message])
    test.notEqual(actual, expected, [message])
    test.deepEqual(actual, expected, [message])
    test.notDeepEqual(actual, expected, [message])
    test.strictEqual(actual, expected, [message])
    test.notStrictEqual(actual, expected, [message])
    test.throws(block, [error], [message])
    test.doesNotThrow(block, [error], [message])
    test.ifError(value)
###

exports.<%= safeSlugname %> =
  setUp: (done) ->
    # setup here
    done()

  'no args': (test) ->
    test.expect(1)
    # tests here
    test.equal(<%= safeSlugname %>.awesome(), 'awesome', 'should be awesome.')
    test.done()