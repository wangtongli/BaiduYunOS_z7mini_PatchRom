.class public Lcom/android/server/QcConnectivityService$VpnCallback;
.super Lcom/android/server/ConnectivityService$VpnCallback;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VpnCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/QcConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/QcConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 5409
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$VpnCallback;-><init>(Lcom/android/server/ConnectivityService;)V

    return-void
.end method


# virtual methods
.method public addUidForwarding(Ljava/lang/String;IIZ)V
    .locals 1
    .parameter "interfaze"
    .parameter "uidStart"
    .parameter "uidEnd"
    .parameter "forwardDns"

    .prologue
    .line 5516
    :try_start_0
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13100(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/os/INetworkManagementService;->setUidRangeRoute(Ljava/lang/String;II)V

    .line 5517
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13100(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/os/INetworkManagementService;->setDnsInterfaceForUidRange(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5521
    :cond_0
    :goto_0
    return-void

    .line 5518
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addUserForwarding(Ljava/lang/String;IZ)V
    .locals 3
    .parameter "interfaze"
    .parameter "uid"
    .parameter "forwardDns"

    .prologue
    .line 5502
    sget v2, Landroid/os/UserHandle;->PER_USER_RANGE:I

    mul-int v1, p2, v2

    .line 5503
    .local v1, uidStart:I
    sget v2, Landroid/os/UserHandle;->PER_USER_RANGE:I

    add-int/2addr v2, v1

    add-int/lit8 v0, v2, -0x1

    .line 5504
    .local v0, uidEnd:I
    invoke-virtual {p0, p1, v1, v0, p3}, Lcom/android/server/QcConnectivityService$VpnCallback;->addUidForwarding(Ljava/lang/String;IIZ)V

    .line 5505
    return-void
.end method

.method public clearMarkedForwarding(Ljava/lang/String;)V
    .locals 1
    .parameter "interfaze"

    .prologue
    .line 5496
    :try_start_0
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13100(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->clearMarkedForwarding(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5499
    :goto_0
    return-void

    .line 5497
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearUidForwarding(Ljava/lang/String;IIZ)V
    .locals 1
    .parameter "interfaze"
    .parameter "uidStart"
    .parameter "uidEnd"
    .parameter "forwardDns"

    .prologue
    .line 5526
    :try_start_0
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13100(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/os/INetworkManagementService;->clearUidRangeRoute(Ljava/lang/String;II)V

    .line 5527
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13100(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/os/INetworkManagementService;->clearDnsInterfaceForUidRange(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5531
    :cond_0
    :goto_0
    return-void

    .line 5528
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearUserForwarding(Ljava/lang/String;IZ)V
    .locals 3
    .parameter "interfaze"
    .parameter "uid"
    .parameter "forwardDns"

    .prologue
    .line 5508
    sget v2, Landroid/os/UserHandle;->PER_USER_RANGE:I

    mul-int v1, p2, v2

    .line 5509
    .local v1, uidStart:I
    sget v2, Landroid/os/UserHandle;->PER_USER_RANGE:I

    add-int/2addr v2, v1

    add-int/lit8 v0, v2, -0x1

    .line 5510
    .local v0, uidEnd:I
    invoke-virtual {p0, p1, v1, v0, p3}, Lcom/android/server/QcConnectivityService$VpnCallback;->clearUidForwarding(Ljava/lang/String;IIZ)V

    .line 5511
    return-void
.end method

.method public onStateChanged(Landroid/net/NetworkInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 5412
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$20600(Lcom/android/server/QcConnectivityService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5413
    return-void
.end method

.method public override(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .parameter "iface"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5416
    .local p2, dnsServers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, searchDomains:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 5417
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$VpnCallback;->restore()V

    .line 5459
    :goto_0
    return-void

    .line 5422
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5423
    .local v3, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5426
    .local v6, address:Ljava/lang/String;
    :try_start_0
    invoke-static {v6}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5427
    :catch_0
    move-exception v0

    goto :goto_1

    .line 5431
    .end local v6           #address:Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5432
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$VpnCallback;->restore()V

    goto :goto_0

    .line 5437
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 5438
    .local v7, buffer:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_3

    .line 5439
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 5440
    .local v8, domain:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 5443
    .end local v8           #domain:Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 5446
    .local v4, domains:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDnsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13700(Lcom/android/server/QcConnectivityService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 5447
    :try_start_1
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    const-string v1, "VPN"

    const/4 v5, 0x0

    move-object v2, p1

    #calls: Lcom/android/server/QcConnectivityService;->updateDnsLocked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/QcConnectivityService;->access$20700(Lcom/android/server/QcConnectivityService;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 5448
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5451
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mProxyLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$20800(Lcom/android/server/QcConnectivityService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5452
    :try_start_2
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/QcConnectivityService;->mDefaultProxyDisabled:Z
    invoke-static {v0, v2}, Lcom/android/server/QcConnectivityService;->access$20902(Lcom/android/server/QcConnectivityService;Z)Z

    .line 5453
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$21000(Lcom/android/server/QcConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$21100(Lcom/android/server/QcConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5454
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    const/4 v2, 0x0

    #calls: Lcom/android/server/QcConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V
    invoke-static {v0, v2}, Lcom/android/server/QcConnectivityService;->access$21200(Lcom/android/server/QcConnectivityService;Landroid/net/ProxyProperties;)V

    .line 5456
    :cond_4
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 5448
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public protect(Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .parameter "socket"

    .prologue
    .line 5472
    :try_start_0
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$13100(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getMarkForProtect()I

    move-result v0

    .line 5473
    .local v0, mark:I
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    invoke-static {v1, v0}, Landroid/net/NetworkUtils;->markSocket(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5476
    .end local v0           #mark:I
    :goto_0
    return-void

    .line 5474
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public restore()V
    .locals 3

    .prologue
    .line 5462
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mProxyLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$20800(Lcom/android/server/QcConnectivityService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5463
    :try_start_0
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/QcConnectivityService;->mDefaultProxyDisabled:Z
    invoke-static {v0, v2}, Lcom/android/server/QcConnectivityService;->access$20902(Lcom/android/server/QcConnectivityService;Z)Z

    .line 5464
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$21000(Lcom/android/server/QcConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$21100(Lcom/android/server/QcConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5465
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$21100(Lcom/android/server/QcConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v2

    #calls: Lcom/android/server/QcConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V
    invoke-static {v0, v2}, Lcom/android/server/QcConnectivityService;->access$21200(Lcom/android/server/QcConnectivityService;Landroid/net/ProxyProperties;)V

    .line 5467
    :cond_0
    monitor-exit v1

    .line 5468
    return-void

    .line 5467
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMarkedForwarding(Ljava/lang/String;)V
    .locals 1
    .parameter "interfaze"

    .prologue
    .line 5489
    :try_start_0
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13100(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->setMarkedForwarding(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5492
    :goto_0
    return-void

    .line 5490
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRoutes(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .parameter "interfaze"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5479
    .local p2, routes:Ljava/util/List;,"Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 5481
    .local v1, route:Landroid/net/RouteInfo;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$VpnCallback;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$13100(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/os/INetworkManagementService;->setMarkedForwardingRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5482
    :catch_0
    move-exception v2

    goto :goto_0

    .line 5485
    .end local v1           #route:Landroid/net/RouteInfo;
    :cond_0
    return-void
.end method
