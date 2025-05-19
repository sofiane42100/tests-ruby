def time_string(seconds)
  hours = seconds / 3600
  minutes = (seconds % 3600) / 60
  secs = seconds % 60

  # On formate avec des zéros à gauche pour avoir toujours 2 chiffres par partie
  format("%02d:%02d:%02d", hours, minutes, secs)
end