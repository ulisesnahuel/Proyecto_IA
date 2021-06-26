xa = linspace(-20,20);
[x fval exitflag] = ga(@(xa)(abs(xa)+cos(xa)),1)