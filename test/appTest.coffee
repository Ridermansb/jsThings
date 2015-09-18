should = require('chai').should()

describe "ES2016", () ->
    it "Works", () ->
        (1 + 2).should.equal(3)

    it "Var is global per function", () ->
        i = 2
        do -> i = 3
        i.should.equal(3)

    it "Private properties", () ->
        fnOAB = ->
            priProperty = 'a'
            { getProperty: -> priProperty }

        objOAB = fnOAB()

        should.not.exist objOAB.priProperty
        objOAB.getProperty().should.to.equal 'a'
