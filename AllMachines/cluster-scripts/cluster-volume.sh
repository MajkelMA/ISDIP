sudo gluster volume create wol_grupa4 replica 4 ClusterMachine1.ex1.gr4:/bricks/gluster_brick/brick1 ClusterMachine2.ex1.gr4:/bricks/gluster_brick/brick1 ClusterMachine3.ex1.gr4:/bricks/gluster_brick/brick1 ClusterMachine4.ex1.gr4:/bricks/gluster_brick/brick1
sudo gluster volume start wol_grupa4
sudo gluster volume set wol_grupa4 ctime off
sudo gluster volume set wol_grupa4 ctime on