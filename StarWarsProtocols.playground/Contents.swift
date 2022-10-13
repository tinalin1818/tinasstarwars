/*:
 # Star Wars Protocols
 
 Below are six structs -- three for Jedi ("Master ...") and three for Sith ("Darth ...").  As you can see comparing the structs, there are some powers which are *specific to the Jedi*, some that are *specific to the Sith*, and some that are *common to any Force user*, whether Jedi or Sith.  Using protocols and extensions as appropriate, refactor this set of structs so that each struct is smaller and less verbose, but retains all of the functionality listed in the handout.
*/
//struct MasterYoda {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 9 }
//  func prescience() -> Int { return 5 }
//  func introspection() -> String { return "Search your feelings." }
//  func mindControl() -> String { return "Do or do not." }
//}
//
//struct MasterObiWan {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 5 }
//  func prescience() -> Int { return 5 }
//  func introspection() -> String { return "Search your feelings." }
//  func mindControl() -> String { return "These are not the droids you're looking for." }
//}
//
//struct MasterQuiGon {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 5 }
//  func prescience() -> Int { return 5 }
//  func mindControl() -> String { return "Republic credits will do." }
//  func introspection() -> String { return "Feel, don’t think. Trust your instincts." }
//}
//
//struct DarthVader {
//  func lightSaberSkill() -> Int { return 9 }
//  func telekinesis() -> Int { return 8 }
//  func prescience() -> Int { return 5 }
//  func forceChoke() -> Bool { return true }
//  func forceLightning() -> Bool { return false }
//}
//
//struct DarthSidious {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 7 }
//  func prescience() -> Int { return 6 }
//  func forceChoke() -> Bool { return true }
//  func forceLightning() -> Bool { return true }
//}
//
//struct DarthTyrannous {
//  func lightSaberSkill() -> Int { return 8 }
//  func telekinesis() -> Int { return 5 }
//  func prescience() -> Int { return 5 }
//  func forceChoke() -> Bool { return false }
//  func forceLightning() -> Bool { return true }
//}

/*:
 Place your refactored structs below:
 */
extension SaberSkill {
    func lightSaberSkill() -> Int {
        return 8
    }
}
protocol SaberSkill {
    func lightSaberSkill() -> Int
}

extension Brain {
    func telekinesis() -> Int {
        return 5
    }
}
protocol Brain {
    func telekinesis() -> Int
}

extension Science {
    func prescience() -> Int {
        return 6
    }
}
protocol Science {
    func prescience() -> Int
}

extension Reflect {
    func introspection() -> String {
        return "Search your feelings."
    }
}
protocol Reflect {
    func introspection() -> String
}

protocol Mind {
    func mindControl() -> String
}

extension Choke {
    func forceChoke() -> Bool {
        return true
    }
}
protocol Choke {
    func forceChoke() -> Bool
}

extension Lightning {
    func forceLightning() -> Bool {
        return true
    }
}
protocol Lightning {
    func forceLightning () -> Bool
}

protocol InStarWars: SaberSkill, Brain, Science {}
protocol Jedi: Reflect, Mind {}
protocol Sith: Choke,Lightning {}

struct MasterYoda: InStarWars, Jedi {
    func telekinesis() -> Int {
        return 9
    }
    func mindControl() -> String {
        return "Do or do not."
    }
}
struct MasterObiWan: InStarWars, Jedi {
    func mindControl() -> String {
        return "These are not the droids you're looking for."
    }
}
struct MasterQuiGon: InStarWars, Jedi {
    func introspection() -> String {
        return "Republic credits will do."
    }
    func mindControl() -> String {
        return "Feel, don’t think. Trust your instincts."
    }
}
struct DarthVader: InStarWars, Sith {
    func lightSaberSkills() -> Int {
        return 9
    }
    func telekinesis() -> Int {
        return 8
    }
    func forceLightning() -> Bool {
        return false
    }
}
struct DarthSidious: InStarWars, Sith {
    func telekinesis() -> Int {
        return 7
    }
    func prescience() -> Int {
        return 6
    }
}
struct DarthTyrannous: InStarWars, Sith {
    func forceLightning() -> Bool {
        return false
    }
}
