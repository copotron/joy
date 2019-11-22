@0xb783655f9c2d87c6;

struct Axis {
  x @0 :Int32;
  y @1 :Int32;
  z @2 :Int32;
}

struct Buttons {
  b0 @0 : Bool;
  b1 @1 : Bool;
  b2 @2 : Bool;
  b3 @3 : Bool;
  b4 @4 : Bool;
  b5 @5 : Bool;
  b6 @6 : Bool;
  b7 @7 : Bool;
  b8 @8 : Bool; 
  b9 @9: Bool;
  b10 @10 : Bool;   
}

struct Joystick {
  id @0 :UInt32;
  name @1 :Text;
  desc @2 :Text;
  valid @3 : Bool;
  axis @4: Axis;
  buttons @5: Buttons;
}
