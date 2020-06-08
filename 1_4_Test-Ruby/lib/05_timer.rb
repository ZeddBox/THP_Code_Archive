def time_string(s)
  hh = s / 3600
  mm = (s - (hh * 3600)) / 60
  s = s - (hh * 3600) - (mm * 60)
  
  return "#{hh.to_s.rjust(2, '0')}:#{mm.to_s.rjust(2, '0')}:#{s.to_s.rjust(2, '0')}"
end
