MovJ((InitialPose))
parcaKalinligi = 7.35
Deste = 1
parcaSayisi = 3
sol = P1
sag = P2
Sync()
while 1 do
  Sync()
  if Deste==1 then
    tekrar = parcaSayisi
    Sync()
    while not (tekrar==0) do
      MovJ(sol)
      Wait(0.2 * 1000)
      RelMovL({0,0,(-7-(parcaKalinligi*(parcaSayisi-tekrar))),0})
      DO(1,1)
      Wait(0.5 * 1000)
      DO(1,0)
      RelMovL({0,0,20,0})
      Wait(0.2 * 1000)
      MovJ((InitialPose))
      Wait(0.2 * 1000)
      MovJ(sag)
      Wait(0.2 * 1000)
      RelMovL({0,0,(1-(parcaKalinligi*tekrar)),0})
      Wait(0.2 * 1000)
      DO(2,1)
      Wait(0.2 * 1000)
      DO(2,0)
      Wait(0.2 * 1000)
      RelMovL({0,0,20,0})
      Wait(0.2 * 1000)
      MovJ((InitialPose))
      Wait(0.2 * 1000)
      tekrar = tekrar-1
    end
    Deste = 2
  end
  Sync()
  if Deste==2 then
    tekrar = parcaSayisi
    Sync()
    while not (tekrar==0) do
      MovJ(sag)
      Wait(0.2 * 1000)
      RelMovL({0,0,(-7-(parcaKalinligi*(parcaSayisi-tekrar))),0})
      DO(1,1)
      Wait(0.5 * 1000)
      DO(1,0)
      RelMovL({0,0,20,0})
      Wait(0.2 * 1000)
      MovJ((InitialPose))
      Wait(0.2 * 1000)
      MovJ(sol)
      Wait(0.2 * 1000)
      RelMovL({0,0,(1-(parcaKalinligi*tekrar)),0})
      Wait(0.2 * 1000)
      DO(2,1)
      Wait(0.2 * 1000)
      DO(2,0)
      Wait(0.2 * 1000)
      RelMovL({0,0,20,0})
      Wait(0.2 * 1000)
      MovJ((InitialPose))
      Wait(0.2 * 1000)
      tekrar = tekrar-1
    end
    Deste = 1
  end
end
