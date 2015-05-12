import gevent
from random import randint

def job():
    rnd = randint(1, 10000) / float(1000)
    gevent.sleep(rnd);
    return rnd

jobs = [gevent.spawn(job) for i in range(3)];
gevent.joinall(jobs)
print([job.value for job in jobs])
