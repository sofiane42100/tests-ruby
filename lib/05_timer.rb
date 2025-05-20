def time_string(seconds)
  hours = seconds / 3600            # Calcule le nombre d'heures complètes
  minutes = (seconds % 3600) / 60   # Calcule le nombre de minutes restantes après avoir retiré les heures
  secs = seconds % 60               # Calcule le nombre de secondes restantes

  # On formate avec des zéros à gauche pour avoir toujours 2 chiffres par partie (ex: 01:05:09)
  format("%02d:%02d:%02d", hours, minutes, secs)
end
