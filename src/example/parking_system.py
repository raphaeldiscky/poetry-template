class ParkingSystem:
  # constructor used to initialize the object
  def __init__(
    self,
    big: int,
    medium: int,
    small: int,
  ):
    self.spots = [big, medium, small]

  # method to add a car
  def addCar(self, carType: int) -> bool:
    if self.spots[carType - 1] > 0:
      self.spots[carType - 1] -= 1
      return True
    return False
