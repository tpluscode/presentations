REST ignores the details of component implementation and protocol syntax in order to focus on the roles of components, the
constraints upon their interaction with other components, and their interpretation of significant data elements.

REST components perform actions on a resource by using a representation to capture the current or intended state of that
resource and transferring that representation between components. A representation is a sequence of bytes, plus
representation metadata to describe those bytes.

Whether the representation is in the same format as the raw source, or is derived from the source, remains hidden behind the interface

REST concentrates all of the control state into the representations received in response to interactions

The model application is therefore an engine that moves from one state to the next by examining and choosing from among
the alternative state transitions in the current set of representations. Not surprisingly, this exactly matches the user
interface of a hypermedia browser.

Semantics are a by-product of the act of assigning resource identifiers and populating those resources with representations.
At no time whatsoever do the server or client software need to know or understand the meaning of a URI — they merely act
as a conduit through which the creator of a resource (a human naming authority) can associate representations with the
semantics identified by the URI.
