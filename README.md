# WidgetApp
An example swift project demonstrating a problem declaring protocol conformance for structs declared in a framework. 

# Question on stack overflow

http://stackoverflow.com/questions/32981542/declare-trivial-protocol-conformance-for-struct-in-a-framework

Is it possible to declare that struct a struct, defined in a framework, trivially conforms to a protocol, defined in my app?

Say, for example, I have an API that declares structs for a few widgets modelled in a framework:

    public struct VagueWidget {
        public let temperature: Float
    }

    public struct SpecificWidget {
        public let calibratedTemperature: Float
        public let movingAverageTemperature: Float
    }

    public struct SuperSpecificWidget {
        public let surfaceTemperature: Float
        public let inferredCoreTemperature: Int?
    }

And then in my application I want to generalise these by way of a protocol. 

    protocol Widget {
        var temperature: Float { get }
    }

In my application I can declare structs similar to those in the API, and trivially declare them as conforming to the protocol.


    struct MockWidget {
        let temperature: Float
    }

    extension MockWidget: Widget {}

And then I can declare protocol conformance for the structs in the framework.

    extension SuperSpecificWidget: Widget {
        var temperature: Float {
            get {
                return surfaceTemperature
            }
        }
    }

    extension SpecificWidget: Widget {
        var temperature: Float {
            get {
                return calibratedTemperature
            }
        }
    }

    extension VagueWidget: Widget {}

This code compiles, but doesn't link. The trivially conforming `VagueWidget` in the framework which is equivalent to the `MockWidget` in the application results in a missing symbol:

    Undefined symbols for architecture x86_64:
      "WidgetAPI.VagueWidget.temperature.getter : Swift.Float", referenced from:
       protocol witness for WidgetApp.Widget.temperature.getter : Swift.Float in conformance WidgetAPI.VagueWidget : WidgetApp.Widget in WidgetApp in AppModel.o

Commenting out the trivial protocol conformance for the `VagueWidget` produces code that compiles and runs as desired, but obviously missing the desired protocol conformance.
