/* exports.testHelloWorld = function(test) {
    test.expect(1);
    test.ok(true, "Hello World");
    test.done();
}; */

assert = require("assert");

describe("sample test", function() {
	it("HelloWorld", function(done){
		setTimeout(done, 100);
		assert.equal("helloworld","helloworld","success for HelloWorld");
	}); 
}); 
