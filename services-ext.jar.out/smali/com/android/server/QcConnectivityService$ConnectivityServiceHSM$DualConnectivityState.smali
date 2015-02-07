.class abstract Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
.super Lcom/android/internal/util/State;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DualConnectivityState"
.end annotation


# instance fields
.field protected mOtherDefaultConnectionSequence:I

.field protected mOtherDefaultInetCondition:I

.field protected mOtherDefaultInetConditionPublished:I

.field protected mOtherInetConditionChangeInFlight:Z

.field protected myDefaultNet:I

.field protected otherDefaultNet:I

.field protected resetConnections:I

.field final synthetic this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;


# direct methods
.method protected constructor <init>(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3738
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 3731
    iput v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetCondition:I

    iput v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetConditionPublished:I

    iput v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultConnectionSequence:I

    .line 3735
    iput-boolean v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherInetConditionChangeInFlight:Z

    .line 3736
    iput v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->resetConnections:I

    .line 3739
    const-string v0, "persist.cne.wqe.db"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->resetConnections:I

    .line 3740
    return-void
.end method

.method private handleConnectivityChange(IZZ)V
    .locals 16
    .parameter "netType"
    .parameter "doReset"
    .parameter "doDns"

    .prologue
    .line 4441
    invoke-static/range {p1 .. p1}, Landroid/net/ConnectivityManager;->isNetworkTypeExempt(I)Z

    move-result v6

    .line 4442
    .local v6, exempt:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$16800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handleConnectivityChange"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$16900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4443
    if-eqz p2, :cond_4

    const/4 v14, 0x3

    .line 4446
    .local v14, resetMask:I
    :goto_0
    if-eqz p3, :cond_0

    .line 4447
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDnsConfigurationChange(I)V

    .line 4450
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$17000(Lcom/android/server/QcConnectivityService;)[Landroid/net/LinkProperties;

    move-result-object v1

    aget-object v3, v1, p1

    .line 4451
    .local v3, curLp:Landroid/net/LinkProperties;
    const/4 v2, 0x0

    .line 4453
    .local v2, newLp:Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4454
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    .line 4456
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleConnectivityChange: changed linkProperty["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doReset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resetMask="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n   curLp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n   newLp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$17100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4462
    if-eqz v3, :cond_6

    .line 4463
    invoke-virtual {v3, v2}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 4464
    invoke-virtual {v3, v2}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v7

    .line 4465
    .local v7, car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    iget-object v1, v7, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v7, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_9

    .line 4466
    :cond_1
    iget-object v1, v7, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/LinkAddress;

    .line 4467
    .local v12, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_3

    .line 4468
    or-int/lit8 v14, v14, 0x1

    .line 4470
    :cond_3
    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_2

    .line 4471
    or-int/lit8 v14, v14, 0x2

    goto :goto_1

    .line 4443
    .end local v2           #newLp:Landroid/net/LinkProperties;
    .end local v3           #curLp:Landroid/net/LinkProperties;
    .end local v7           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #linkAddr:Landroid/net/LinkAddress;
    .end local v14           #resetMask:I
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 4475
    .restart local v2       #newLp:Landroid/net/LinkProperties;
    .restart local v3       #curLp:Landroid/net/LinkProperties;
    .restart local v7       #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v14       #resetMask:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleConnectivityChange: addresses changed linkProperty["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resetMask="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n   car="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$17200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4503
    .end local v7           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$17000(Lcom/android/server/QcConnectivityService;)[Landroid/net/LinkProperties;

    move-result-object v1

    aput-object v2, v1, p1

    .line 4504
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mRouteAttributes:[Lcom/android/server/QcConnectivityService$RouteAttributes;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$6200(Lcom/android/server/QcConnectivityService;)[Lcom/android/server/QcConnectivityService$RouteAttributes;

    move-result-object v1

    aget-object v5, v1, p1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ZLcom/android/server/QcConnectivityService$RouteAttributes;Z)Z

    move-result v13

    .line 4510
    .local v13, resetDns:Z
    if-nez v14, :cond_7

    if-eqz v13, :cond_f

    .line 4511
    :cond_7
    if-eqz v3, :cond_f

    .line 4512
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 4513
    .local v11, iface:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 4514
    if-eqz v14, :cond_d

    .line 4515
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetConnections("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$17600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4516
    invoke-static {v11, v14}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 4520
    and-int/lit8 v1, v14, 0x1

    if-eqz v1, :cond_d

    .line 4521
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$12200(Lcom/android/server/QcConnectivityService;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    .line 4522
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$12200(Lcom/android/server/QcConnectivityService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v9, v1, :cond_c

    .line 4523
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$12200(Lcom/android/server/QcConnectivityService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    const/4 v5, 0x0

    invoke-virtual {v1, v11, v5}, Lcom/android/server/connectivity/Vpn;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4522
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 4481
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #iface:Ljava/lang/String;
    .end local v13           #resetDns:Z
    .restart local v7       #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleConnectivityChange: address are the same reset per doReset linkProperty["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resetMask="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$17300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4487
    .end local v7           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_a
    const/4 v14, 0x3

    .line 4489
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleConnectivityChange: interface not not equivalent reset both linkProperty["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resetMask="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$17400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4497
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleConnectivityChange: changed linkProperty["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doReset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resetMask="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n  curLp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n  newLp= null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$17500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4525
    .restart local v9       #i:I
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #iface:Ljava/lang/String;
    .restart local v13       #resetDns:Z
    :cond_c
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4528
    .end local v9           #i:I
    :cond_d
    if-eqz v13, :cond_8

    .line 4529
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->flushVmDnsCache()V
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$13800(Lcom/android/server/QcConnectivityService;)V

    .line 4530
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetting DNS cache for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$17700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4532
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$13100(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-interface {v1, v11}, Landroid/os/INetworkManagementService;->flushInterfaceDnsCache(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 4533
    :catch_0
    move-exception v8

    .line 4535
    .local v8, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception resetting dns cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$17800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4525
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v9       #i:I
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 4539
    .end local v9           #i:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t reset connection for type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$17900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4546
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #iface:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    aget-object v15, v1, p1

    .line 4547
    .local v15, tracker:Landroid/net/NetworkStateTracker;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$13900(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0, v15}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(ILandroid/net/NetworkStateTracker;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4553
    invoke-static {v3}, Lcom/android/server/connectivity/Nat464Xlat;->isRunningClat(Landroid/net/LinkProperties;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {v2}, Lcom/android/server/connectivity/Nat464Xlat;->isRunningClat(Landroid/net/LinkProperties;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 4554
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$13900(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/connectivity/Nat464Xlat;->stopClat()V

    .line 4557
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4558
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$13900(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/android/server/connectivity/Nat464Xlat;->startClat(Landroid/net/NetworkStateTracker;)V

    .line 4567
    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    const-string v4, "linkPropertiesChanged"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4569
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    invoke-virtual {v1}, Lcom/android/server/QcConnectivityService;->isTetheringSupported()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4570
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$18000(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Tethering;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v4}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/connectivity/Tethering;->handleTetherIfaceChange(Landroid/net/NetworkInfo;)V

    .line 4573
    :cond_12
    return-void

    .line 4560
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$13900(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/connectivity/Nat464Xlat;->stopClat()V

    goto :goto_5
.end method

.method private updateDnsLocked(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 15
    .parameter "iface"
    .parameter
    .parameter "domains"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3999
    .local p2, netDnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v13}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$12300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " updateDns"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$12400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4000
    const/4 v0, 0x0

    .line 4001
    .local v0, changed:Z
    const/4 v7, 0x0

    .line 4002
    .local v7, last:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4003
    .local v2, dnses:Ljava/util/List;,"Ljava/util/List<Ljava/net/InetAddress;>;"
    const/4 v8, 0x0

    .line 4004
    .local v8, mlp:Landroid/net/LinkProperties;
    const/4 v9, 0x0

    .line 4006
    .local v9, olp:Landroid/net/LinkProperties;
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v11}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static {v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)I

    move-result v12

    aget-object v11, v11, v12

    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v8

    if-nez v8, :cond_1

    .line 4008
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v12, "mlp is NULL"

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$12500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4064
    :cond_0
    :goto_0
    return-void

    .line 4012
    :cond_1
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->otherDefaultDnsNet:I
    invoke-static {v11}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    .line 4013
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v11}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->otherDefaultDnsNet:I
    invoke-static {v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)I

    move-result v12

    aget-object v11, v11, v12

    invoke-interface {v11}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    .line 4016
    :cond_2
    invoke-virtual {v8}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4017
    if-eqz v9, :cond_3

    .line 4018
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4021
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDefaultDns:Ljava/net/InetAddress;
    invoke-static {v11}, Lcom/android/server/QcConnectivityService;->access$12600(Lcom/android/server/QcConnectivityService;)Ljava/net/InetAddress;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 4022
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDefaultDns:Ljava/net/InetAddress;
    invoke-static {v11}, Lcom/android/server/QcConnectivityService;->access$12600(Lcom/android/server/QcConnectivityService;)Ljava/net/InetAddress;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4024
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "no dns provided - using "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v13, v13, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDefaultDns:Ljava/net/InetAddress;
    invoke-static {v13}, Lcom/android/server/QcConnectivityService;->access$12600(Lcom/android/server/QcConnectivityService;)Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$12700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4026
    const/4 v0, 0x1

    .line 4028
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 4029
    .local v1, dns:Ljava/net/InetAddress;
    add-int/lit8 v7, v7, 0x1

    .line 4030
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "net.dns"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4031
    .local v6, key:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 4032
    .local v10, value:Ljava/lang/String;
    if-nez v0, :cond_6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 4035
    :cond_6
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "adding dns "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$12800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4036
    const/4 v0, 0x1

    .line 4037
    invoke-static {v6, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4039
    .end local v1           #dns:Ljava/net/InetAddress;
    .end local v6           #key:Ljava/lang/String;
    .end local v10           #value:Ljava/lang/String;
    :cond_7
    add-int/lit8 v4, v7, 0x1

    .local v4, i:I
    :goto_2
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNumDnsEntries:I
    invoke-static {v11}, Lcom/android/server/QcConnectivityService;->access$12900(Lcom/android/server/QcConnectivityService;)I

    move-result v11

    if-gt v4, v11, :cond_8

    .line 4040
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "net.dns"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4041
    .restart local v6       #key:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "erasing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$13000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4042
    const/4 v0, 0x1

    .line 4043
    const-string v11, ""

    invoke-static {v6, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4039
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4045
    .end local v6           #key:Ljava/lang/String;
    :cond_8
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #setter for: Lcom/android/server/QcConnectivityService;->mNumDnsEntries:I
    invoke-static {v11, v7}, Lcom/android/server/QcConnectivityService;->access$12902(Lcom/android/server/QcConnectivityService;I)I

    .line 4047
    if-eqz v0, :cond_0

    .line 4049
    :try_start_0
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Lcom/android/server/QcConnectivityService;->access$13100(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v11

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v13

    invoke-static {v13}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v12, v13, v14}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4053
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Lcom/android/server/QcConnectivityService;->access$13100(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v11

    invoke-virtual {v8}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Landroid/os/INetworkManagementService;->setDefaultInterfaceForDns(Ljava/lang/String;)V

    .line 4054
    if-eqz v9, :cond_0

    .line 4055
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v11}, Lcom/android/server/QcConnectivityService;->access$13100(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v11

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v13

    invoke-static {v13}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v12, v13, v14}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4060
    :catch_0
    move-exception v3

    .line 4061
    .local v3, e:Ljava/lang/Exception;
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exception setting default dns interface: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$13200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;II)Z
    .locals 8
    .parameter "lp"
    .parameter "r"
    .parameter "cycleCount"
    .parameter "defaultRouteMetric"

    .prologue
    const/4 v4, 0x0

    .line 4634
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$18700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " addRoute"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$18800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4636
    const/16 v5, 0x400

    if-le p4, v5, :cond_0

    .line 4637
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v6, "not adding V6 default route for non-active default network"

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$18900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4690
    :goto_0
    return v4

    .line 4641
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 4642
    :cond_1
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addRoute got unexpected null: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$19000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4645
    :cond_2
    const/16 v5, 0xa

    if-le p3, v5, :cond_3

    .line 4646
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v6, "Error adding route - too much recursion"

    #calls: Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$19100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_0

    .line 4650
    :cond_3
    const/4 v3, 0x0

    .line 4651
    .local v3, metric:I
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v2

    .line 4652
    .local v2, ifaceName:Ljava/lang/String;
    if-nez v2, :cond_4

    .line 4653
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v6, "Error adding route - no interface name"

    #calls: Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$19200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_0

    .line 4658
    :cond_4
    invoke-virtual {p2}, Landroid/net/RouteInfo;->isHostRoute()Z

    move-result v5

    if-nez v5, :cond_5

    move v3, p4

    .line 4659
    :cond_5
    invoke-virtual {p2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4660
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v0

    .line 4662
    .local v0, bestRoute:Landroid/net/RouteInfo;
    if-eqz v0, :cond_6

    .line 4663
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4665
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    .line 4674
    :goto_1
    add-int/lit8 v5, p3, 0x1

    invoke-virtual {p0, p1, v0, v5, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;II)Z

    .line 4681
    .end local v0           #bestRoute:Landroid/net/RouteInfo;
    :cond_6
    :try_start_0
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mAddedRoutes:Ljava/util/Collection;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService;->access$19300(Lcom/android/server/QcConnectivityService;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 4682
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mAddedRoutes:Ljava/util/Collection;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService;->access$19300(Lcom/android/server/QcConnectivityService;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4683
    :cond_7
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Routes in main table - [ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mAddedRoutes:Ljava/util/Collection;
    invoke-static {v7}, Lcom/android/server/QcConnectivityService;->access$19300(Lcom/android/server/QcConnectivityService;)Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$19400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4684
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService;->access$13100(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v5

    invoke-interface {v5, v2, v3, p2}, Landroid/os/INetworkManagementService;->addRouteWithMetric(Ljava/lang/String;ILandroid/net/RouteInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4690
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 4669
    .restart local v0       #bestRoute:Landroid/net/RouteInfo;
    :cond_8
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    goto :goto_1

    .line 4685
    .end local v0           #bestRoute:Landroid/net/RouteInfo;
    :catch_0
    move-exception v1

    .line 4687
    .local v1, e:Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception trying to add a Metric Route: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$19500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected handleConnect(Landroid/net/NetworkInfo;)I
    .locals 10
    .parameter "info"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4286
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v9}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$15000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " handleConnect"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$15100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4287
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 4288
    .local v4, type:I
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v7}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v7

    aget-object v3, v7, v4

    .line 4291
    .local v3, thisNet:Landroid/net/NetworkStateTracker;
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v7, v7, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v7

    if-nez v7, :cond_1

    .line 4292
    const/4 v5, -0x1

    .line 4346
    :cond_0
    :goto_0
    return v5

    .line 4297
    :cond_1
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v7}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->contains(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 4298
    invoke-virtual {p0, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->isHigherPriorityNet(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, -0x2

    goto :goto_0

    .line 4304
    :cond_2
    const/4 v0, 0x0

    .line 4305
    .local v0, causedBy:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    monitor-enter v7

    .line 4306
    :try_start_0
    iget-object v8, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Lcom/android/server/QcConnectivityService;->access$3100(Lcom/android/server/QcConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4307
    iget-object v8, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Lcom/android/server/QcConnectivityService;->access$3100(Lcom/android/server/QcConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4308
    iget-object v8, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/QcConnectivityService;->access$3200(Lcom/android/server/QcConnectivityService;)Ljava/lang/String;

    move-result-object v0

    .line 4310
    :cond_3
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4311
    if-eqz v0, :cond_4

    .line 4312
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NetTransition Wakelock for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " released because of connect"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$15200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4315
    :cond_4
    iget v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    if-ne v4, v7, :cond_7

    .line 4316
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #setter for: Lcom/android/server/QcConnectivityService;->mDefaultInetConditionPublished:I
    invoke-static {v7, v5}, Lcom/android/server/QcConnectivityService;->access$11702(Lcom/android/server/QcConnectivityService;I)I

    .line 4317
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    invoke-static {v7}, Lcom/android/server/QcConnectivityService;->access$15308(Lcom/android/server/QcConnectivityService;)I

    .line 4318
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #setter for: Lcom/android/server/QcConnectivityService;->mInetConditionChangeInFlight:Z
    invoke-static {v7, v5}, Lcom/android/server/QcConnectivityService;->access$15402(Lcom/android/server/QcConnectivityService;Z)Z

    .line 4324
    :goto_1
    invoke-interface {v3, v5}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 4325
    iget v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    if-ne v4, v7, :cond_5

    .line 4326
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    invoke-static {v7, v3}, Lcom/android/server/QcConnectivityService;->access$5700(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkStateTracker;)V

    .line 4330
    :cond_5
    iget v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    if-ne v4, v7, :cond_8

    move v1, v6

    .line 4331
    .local v1, doDns:Z
    :goto_2
    invoke-direct {p0, v4, v5, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleConnectivityChange(IZZ)V

    .line 4332
    iget v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    if-eq v4, v7, :cond_9

    .line 4333
    iget-object v6, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v6, v6, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v7, v7, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->getConnectivityChangeDelay()I
    invoke-static {v7}, Lcom/android/server/QcConnectivityService;->access$14500(Lcom/android/server/QcConnectivityService;)I

    move-result v7

    #calls: Lcom/android/server/QcConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V
    invoke-static {v6, p1, v7}, Lcom/android/server/QcConnectivityService;->access$15500(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkInfo;I)V

    .line 4338
    :cond_6
    :goto_3
    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 4339
    .local v2, iface:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 4341
    :try_start_1
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v6

    invoke-interface {v6, v2, v4}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 4342
    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 4310
    .end local v1           #doDns:Z
    .end local v2           #iface:Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 4320
    :cond_7
    iput v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetConditionPublished:I

    .line 4321
    iget v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultConnectionSequence:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultConnectionSequence:I

    .line 4322
    iput-boolean v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherInetConditionChangeInFlight:Z

    goto :goto_1

    :cond_8
    move v1, v5

    .line 4330
    goto :goto_2

    .line 4334
    .restart local v1       #doDns:Z
    :cond_9
    if-ne v4, v6, :cond_6

    .line 4335
    iget-object v6, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendConnectivityUpBroadcast(I)V
    invoke-static {v6, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$15600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;I)V

    goto :goto_3
.end method

.method protected handleConnectivitySwitch(ILjava/lang/String;)Z
    .locals 7
    .parameter "netType"
    .parameter "reason"

    .prologue
    .line 3944
    iget-object v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$11800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " handleConnectivitySwitch"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$11900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3945
    const/4 v2, 0x1

    .line 3947
    .local v2, ret:Z
    iget-object v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->contains(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3948
    iget-object v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not supported for default connectivity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/util/StateMachine;->logw(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$12000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    move v3, v2

    .line 3988
    .end local v2           #ret:Z
    .local v3, ret:I
    :goto_0
    return v3

    .line 3952
    .end local v3           #ret:I
    .restart local v2       #ret:Z
    :cond_0
    iget-object v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v4}, Lcom/android/server/QcConnectivityService;->access$800(Lcom/android/server/QcConnectivityService;)I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 3953
    iget-object v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Network"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is already default"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/util/StateMachine;->logw(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$12100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    move v3, v2

    .line 3954
    .restart local v3       #ret:I
    goto :goto_0

    .line 3956
    .end local v3           #ret:I
    :cond_1
    iget v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    if-ne v4, p1, :cond_4

    .line 3958
    iget-object v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    #setter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v4, v5}, Lcom/android/server/QcConnectivityService;->access$802(Lcom/android/server/QcConnectivityService;I)I

    .line 3959
    iget v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    invoke-virtual {p0, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->updateDefaultRouteMetric(I)V

    .line 3961
    iget-object v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v4}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v4

    iget v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    aget-object v4, v4, v5

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 3963
    .local v1, iface:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/QcConnectivityService;->access$12200(Lcom/android/server/QcConnectivityService;)Landroid/util/SparseArray;

    move-result-object v5

    monitor-enter v5

    .line 3964
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/QcConnectivityService;->access$12200(Lcom/android/server/QcConnectivityService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 3965
    iget-object v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/QcConnectivityService;->access$12200(Lcom/android/server/QcConnectivityService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6}, Lcom/android/server/connectivity/Vpn;->interfaceStatusChanged(Ljava/lang/String;Z)V

    .line 3964
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3967
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3972
    iget-object v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v5

    iget v6, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    aget-object v5, v5, v6

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v5

    #calls: Lcom/android/server/QcConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V
    invoke-static {v4, v5}, Lcom/android/server/QcConnectivityService;->access$4500(Lcom/android/server/QcConnectivityService;Landroid/net/ProxyProperties;)V

    .line 3976
    iget-object v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v5

    iget v6, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    aget-object v5, v5, v6

    #calls: Lcom/android/server/QcConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    invoke-static {v4, v5}, Lcom/android/server/QcConnectivityService;->access$5700(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkStateTracker;)V

    .line 3977
    iget v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->resetConnections:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 3980
    const/4 v4, 0x3

    invoke-static {v1, v4}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 3982
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->sendConnectivitySwitchBroadcast(Ljava/lang/String;)V

    .end local v0           #i:I
    .end local v1           #iface:Ljava/lang/String;
    :goto_2
    move v3, v2

    .line 3988
    .restart local v3       #ret:I
    goto/16 :goto_0

    .line 3967
    .end local v3           #ret:I
    .restart local v0       #i:I
    .restart local v1       #iface:Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 3985
    .end local v0           #i:I
    .end local v1           #iface:Ljava/lang/String;
    :cond_4
    iget v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    invoke-virtual {p0, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->removeDefaultRoutes(I)V

    .line 3986
    const/4 v2, 0x0

    goto :goto_2
.end method

.method protected handleDisconnect(Landroid/net/NetworkInfo;)I
    .locals 21
    .parameter "info"

    .prologue
    .line 4147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v20 .. v20}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$14200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " handleDisconnect"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$14300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4148
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v17

    .line 4151
    .local v17, type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v18, v0

    aget-object v18, v18, v17

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->contains(I)Z

    move-result v18

    if-nez v18, :cond_1

    .line 4152
    :cond_0
    const/16 v18, 0x0

    .line 4249
    :goto_0
    return v18

    .line 4155
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 4156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 4157
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDnsReprioritization(II)V

    .line 4161
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->removeDefaultRoutes(I)V

    .line 4164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mRouteAttributes:[Lcom/android/server/QcConnectivityService$RouteAttributes;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$6200(Lcom/android/server/QcConnectivityService;)[Lcom/android/server/QcConnectivityService$RouteAttributes;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/QcConnectivityService$RouteAttributes;->setMetric(I)V

    .line 4165
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->updateDefaultRouteMetric(I)V

    .line 4167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->remove(I)Z

    .line 4169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    move/from16 v19, v0

    #setter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v18 .. v19}, Lcom/android/server/QcConnectivityService;->access$802(Lcom/android/server/QcConnectivityService;I)I

    .line 4170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/QcConnectivityService;->access$800(Lcom/android/server/QcConnectivityService;)I

    move-result v19

    aget-object v18, v18, v19

    invoke-interface/range {v18 .. v18}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v16

    .line 4171
    .local v16, otherInfo:Landroid/net/NetworkInfo;
    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 4174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v19 .. v19}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/QcConnectivityService;->access$800(Lcom/android/server/QcConnectivityService;)I

    move-result v20

    aget-object v19, v19, v20

    #calls: Lcom/android/server/QcConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/QcConnectivityService;->access$5700(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkStateTracker;)V

    .line 4175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/QcConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 4176
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 4181
    .end local v16           #otherInfo:Landroid/net/NetworkInfo;
    :cond_3
    const/4 v4, 0x0

    .line 4182
    .local v4, causedBy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 4183
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$3100(Lcom/android/server/QcConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 4184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$3100(Lcom/android/server/QcConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$3200(Lcom/android/server/QcConnectivityService;)Ljava/lang/String;

    move-result-object v4

    .line 4187
    :cond_4
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4188
    if-eqz v4, :cond_5

    .line 4189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "NetTransition Wakelock for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " released because of disconnect"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$14400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4193
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v18

    aget-object v18, v18, v17

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 4195
    new-instance v9, Landroid/content/Intent;

    const-string v18, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4196
    .local v9, intent:Landroid/content/Intent;
    const-string v18, "networkInfo"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4197
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 4198
    const-string v18, "isFailover"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4199
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 4201
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_7

    .line 4202
    const-string v18, "reason"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4204
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    .line 4205
    const-string v18, "extraInfo"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4208
    :cond_8
    const-string v18, "otherNetwork"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v19 .. v19}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    invoke-interface/range {v19 .. v19}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4210
    const-string v18, "inetCondition"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mDefaultInetConditionPublished:I
    invoke-static/range {v19 .. v19}, Lcom/android/server/QcConnectivityService;->access$11700(Lcom/android/server/QcConnectivityService;)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4214
    const/4 v6, 0x1

    .line 4215
    .local v6, doReset:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v18

    aget-object v18, v18, v17

    invoke-interface/range {v18 .. v18}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v12

    .line 4216
    .local v12, linkProperties:Landroid/net/LinkProperties;
    if-eqz v12, :cond_b

    .line 4217
    invoke-virtual {v12}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    .line 4218
    .local v15, oldIface:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 4219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v3

    .local v3, arr$:[Landroid/net/NetworkStateTracker;
    array-length v11, v3

    .local v11, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v11, :cond_b

    aget-object v14, v3, v7

    .line 4220
    .local v14, networkStateTracker:Landroid/net/NetworkStateTracker;
    if-nez v14, :cond_a

    .line 4219
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4187
    .end local v3           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v6           #doReset:Z
    .end local v7           #i$:I
    .end local v9           #intent:Landroid/content/Intent;
    .end local v11           #len$:I
    .end local v12           #linkProperties:Landroid/net/LinkProperties;
    .end local v14           #networkStateTracker:Landroid/net/NetworkStateTracker;
    .end local v15           #oldIface:Ljava/lang/String;
    :catchall_0
    move-exception v18

    :try_start_1
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18

    .line 4221
    .restart local v3       #arr$:[Landroid/net/NetworkStateTracker;
    .restart local v6       #doReset:Z
    .restart local v7       #i$:I
    .restart local v9       #intent:Landroid/content/Intent;
    .restart local v11       #len$:I
    .restart local v12       #linkProperties:Landroid/net/LinkProperties;
    .restart local v14       #networkStateTracker:Landroid/net/NetworkStateTracker;
    .restart local v15       #oldIface:Ljava/lang/String;
    :cond_a
    invoke-interface {v14}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    .line 4222
    .local v13, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getType()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    .line 4223
    invoke-interface {v14}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v10

    .line 4224
    .local v10, l:Landroid/net/LinkProperties;
    if-eqz v10, :cond_9

    .line 4225
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 4226
    const/4 v6, 0x0

    .line 4235
    .end local v3           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v7           #i$:I
    .end local v10           #l:Landroid/net/LinkProperties;
    .end local v11           #len$:I
    .end local v13           #networkInfo:Landroid/net/NetworkInfo;
    .end local v14           #networkStateTracker:Landroid/net/NetworkStateTracker;
    .end local v15           #oldIface:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    const/4 v5, 0x1

    .line 4236
    .local v5, doDns:Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v6, v5}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleConnectivityChange(IZZ)V

    .line 4238
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 4239
    .local v8, immediateIntent:Landroid/content/Intent;
    const-string v18, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/android/server/QcConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v0, v8}, Lcom/android/server/QcConnectivityService;->access$4000(Lcom/android/server/QcConnectivityService;Landroid/content/Intent;)V

    .line 4241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v19, v0

    #calls: Lcom/android/server/QcConnectivityService;->getConnectivityChangeDelay()I
    invoke-static/range {v19 .. v19}, Lcom/android/server/QcConnectivityService;->access$14500(Lcom/android/server/QcConnectivityService;)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    #calls: Lcom/android/server/QcConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V
    invoke-static {v0, v9, v1}, Lcom/android/server/QcConnectivityService;->access$14600(Lcom/android/server/QcConnectivityService;Landroid/content/Intent;I)V

    .line 4244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 4245
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDnsReprioritization(II)V

    .line 4248
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->remove(I)Z

    .line 4249
    const/16 v18, -0x2

    goto/16 :goto_0

    .line 4235
    .end local v5           #doDns:Z
    .end local v8           #immediateIntent:Landroid/content/Intent;
    :cond_d
    const/4 v5, 0x0

    goto :goto_2
.end method

.method protected handleDnsConfigurationChange(I)V
    .locals 12
    .parameter "netType"

    .prologue
    .line 4102
    iget-object v8, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v8}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v8

    aget-object v4, v8, p1

    .line 4103
    .local v4, nt:Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v8

    if-nez v8, :cond_0

    .line 4104
    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v5

    .line 4105
    .local v5, p:Landroid/net/LinkProperties;
    if-nez v5, :cond_1

    .line 4131
    .end local v5           #p:Landroid/net/LinkProperties;
    :cond_0
    :goto_0
    return-void

    .line 4106
    .restart local v5       #p:Landroid/net/LinkProperties;
    :cond_1
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    .line 4107
    .local v0, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v8, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v8, v8, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4108
    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 4109
    .local v3, network:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDnsLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/QcConnectivityService;->access$13700(Lcom/android/server/QcConnectivityService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 4110
    :try_start_0
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v8, v0, v10}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->updateDnsLocked(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V

    .line 4111
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4129
    .end local v3           #network:Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->flushVmDnsCache()V
    invoke-static {v8}, Lcom/android/server/QcConnectivityService;->access$13800(Lcom/android/server/QcConnectivityService;)V

    goto :goto_0

    .line 4111
    .restart local v3       #network:Ljava/lang/String;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 4114
    .end local v3           #network:Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v8, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v8}, Lcom/android/server/QcConnectivityService;->access$13100(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v9, v10, v11}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 4120
    :goto_1
    iget-object v8, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetRequestersPids:[Ljava/util/List;
    invoke-static {v8}, Lcom/android/server/QcConnectivityService;->access$14100(Lcom/android/server/QcConnectivityService;)[Ljava/util/List;

    move-result-object v8

    aget-object v7, v8, p1

    .line 4121
    .local v7, pids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 4123
    .local v6, pid:Ljava/lang/Integer;
    :try_start_3
    iget-object v8, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v8, v8, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v8}, Lcom/android/server/QcConnectivityService;->access$13100(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/os/INetworkManagementService;->setDnsInterfaceForPid(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 4124
    :catch_0
    move-exception v1

    .line 4125
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "QcConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception setting interface for pid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4116
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #pid:Ljava/lang/Integer;
    .end local v7           #pids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v1

    .line 4117
    .restart local v1       #e:Ljava/lang/Exception;
    iget-object v8, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception setting dns servers: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$14000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected handleDnsReprioritization(II)V
    .locals 4
    .parameter "netType"
    .parameter "netTypeSecondary"

    .prologue
    .line 4071
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$13300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " handleDnsReprioritization"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$13400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4073
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4074
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot prioritize dns for unsupported type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->logw(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$13500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4094
    :cond_0
    :goto_0
    return-void

    .line 4078
    :cond_1
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prioritizing Dns for network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$13600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4080
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDnsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13700(Lcom/android/server/QcConnectivityService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4081
    :try_start_0
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #setter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static {v0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6302(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;I)I

    .line 4082
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #setter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->otherDefaultDnsNet:I
    invoke-static {v0, p2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6402(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;I)I

    .line 4083
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->updateDnsLocked(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V

    .line 4084
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4085
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->flushVmDnsCache()V
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13800(Lcom/android/server/QcConnectivityService;)V

    .line 4087
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13900(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(ILandroid/net/NetworkStateTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4089
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13900(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13900(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/Nat464Xlat;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4090
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13900(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/Nat464Xlat;->stopClat()V

    .line 4091
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$13900(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Nat464Xlat;->startClat(Landroid/net/NetworkStateTracker;)V

    goto/16 :goto_0

    .line 4084
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected handleInetConditionChange(II)Z
    .locals 7
    .parameter "netType"
    .parameter "condition"

    .prologue
    const/4 v1, 0x1

    .line 4355
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$15700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " handleInetConditionChange"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$15800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4356
    iget v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    if-eq p1, v2, :cond_0

    .line 4357
    const/4 v1, 0x0

    .line 4388
    :goto_0
    return v1

    .line 4361
    :cond_0
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleInetConditionChange: net="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", condition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", for other active default Network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$15900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4366
    iput p2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetCondition:I

    .line 4368
    iget-boolean v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherInetConditionChangeInFlight:Z

    if-nez v2, :cond_2

    .line 4369
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v3, "handleInetConditionChange: starting a change hold"

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$16000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4371
    iget v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetCondition:I

    const/16 v3, 0x32

    if-le v2, v3, :cond_1

    .line 4372
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$1000(Lcom/android/server/QcConnectivityService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "inet_condition_debounce_up_delay"

    const/16 v4, 0x1f4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4378
    .local v0, delay:I
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherInetConditionChangeInFlight:Z

    .line 4379
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const/16 v4, 0x69

    iget v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    iget v6, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultConnectionSequence:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 4375
    .end local v0           #delay:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$1000(Lcom/android/server/QcConnectivityService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "inet_condition_debounce_down_delay"

    const/16 v4, 0xbb8

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #delay:I
    goto :goto_1

    .line 4384
    .end local v0           #delay:I
    :cond_2
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v3, "handleInetConditionChange: currently in hold - not setting new end evt"

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$16100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected handleInetConditionHoldEnd(II)Z
    .locals 6
    .parameter "netType"
    .parameter "sequence"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4397
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$16200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handleInetConditionHoldEnd"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$16300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4398
    iget v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    if-eq p1, v3, :cond_0

    .line 4425
    :goto_0
    return v1

    .line 4403
    :cond_0
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleInetConditionHoldEnd: net="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", condition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetCondition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", published condition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetConditionPublished:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$16400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4407
    iput-boolean v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherInetConditionChangeInFlight:Z

    .line 4409
    iget v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultConnectionSequence:I

    if-eq v1, p2, :cond_1

    .line 4411
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v3, "handleInetConditionHoldEnd: event hold for obsolete network - ignoring"

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$16500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    move v1, v2

    .line 4414
    goto :goto_0

    .line 4417
    :cond_1
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    iget v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    aget-object v1, v1, v3

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 4418
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4419
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleInetConditionHoldEnd: default network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not connected - ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$16600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    move v1, v2

    .line 4421
    goto :goto_0

    .line 4423
    :cond_2
    iget v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetCondition:I

    iput v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->mOtherDefaultInetConditionPublished:I

    .line 4424
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    invoke-static {v1, v0}, Lcom/android/server/QcConnectivityService;->access$16700(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkInfo;)V

    move v1, v2

    .line 4425
    goto/16 :goto_0
.end method

.method protected isHigherPriorityNet(I)Z
    .locals 4
    .parameter "type"

    .prologue
    .line 4260
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$14700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isHigherPriorityNet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$14800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4261
    const/4 v0, 0x0

    .line 4262
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->isHigherPriorityNetwork(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4265
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    iget v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    aget-object v2, v2, v3

    #calls: Lcom/android/server/QcConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z
    invoke-static {v1, v2}, Lcom/android/server/QcConnectivityService;->access$14900(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkStateTracker;)Z

    .line 4266
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v1

    iget v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    invoke-virtual {v1, v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->remove(I)Z

    .line 4267
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    iget v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    aget-object v2, v2, v3

    #calls: Lcom/android/server/QcConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z
    invoke-static {v1, v2}, Lcom/android/server/QcConnectivityService;->access$14900(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkStateTracker;)Z

    .line 4268
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v1

    iget v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    invoke-virtual {v1, v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->remove(I)Z

    .line 4269
    const/4 v0, 0x1

    .line 4273
    :goto_0
    return v0

    .line 4271
    :cond_0
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, v1, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    aget-object v2, v2, p1

    #calls: Lcom/android/server/QcConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z
    invoke-static {v1, v2}, Lcom/android/server/QcConnectivityService;->access$14900(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkStateTracker;)Z

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .parameter "msg"

    .prologue
    .line 3744
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v13}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$9700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".processMessage what="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$9800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3746
    const/4 v7, 0x0

    .line 3747
    .local v7, ret:Z
    iget v11, p1, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    .line 3875
    const/4 v7, 0x0

    .line 3877
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v13}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$11100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": no handler for message="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$11200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3881
    :cond_0
    :goto_0
    :sswitch_0
    return v7

    .line 3750
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkInfo;

    .line 3751
    .local v2, info:Landroid/net/NetworkInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleConnect(Landroid/net/NetworkInfo;)I

    move-result v5

    .line 3752
    .local v5, r:I
    if-nez v5, :cond_1

    .line 3753
    const/4 v7, 0x1

    goto :goto_0

    .line 3754
    :cond_1
    const/4 v11, -0x1

    if-ne v5, v11, :cond_2

    .line 3755
    const/4 v7, 0x0

    goto :goto_0

    .line 3757
    :cond_2
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v11, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$9900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    .line 3758
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v12, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;
    invoke-static {v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$10000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    move-result-object v12

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$10100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    .line 3759
    const/4 v7, 0x1

    .line 3761
    goto :goto_0

    .line 3765
    .end local v2           #info:Landroid/net/NetworkInfo;
    .end local v5           #r:I
    :sswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkInfo;

    .line 3766
    .restart local v2       #info:Landroid/net/NetworkInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDisconnect(Landroid/net/NetworkInfo;)I

    move-result v5

    .line 3767
    .restart local v5       #r:I
    if-nez v5, :cond_3

    .line 3768
    const/4 v7, 0x0

    goto :goto_0

    .line 3769
    :cond_3
    const/4 v11, -0x1

    if-ne v5, v11, :cond_4

    .line 3770
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v11, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$10200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    .line 3771
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v12, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;
    invoke-static {v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$10000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    move-result-object v12

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$10300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    .line 3772
    const/4 v7, 0x1

    goto :goto_0

    .line 3774
    :cond_4
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v12, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mSmartConnectivityState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;
    invoke-static {v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$10000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;

    move-result-object v12

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$10400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    .line 3775
    const/4 v7, 0x1

    .line 3777
    goto :goto_0

    .line 3781
    .end local v2           #info:Landroid/net/NetworkInfo;
    .end local v5           #r:I
    :sswitch_3
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 3782
    .local v10, type:I
    iget v11, p1, Landroid/os/Message;->arg2:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    const/4 v1, 0x1

    .line 3783
    .local v1, doReset:Z
    :goto_1
    const/4 v11, 0x1

    invoke-direct {p0, v10, v1, v11}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleConnectivityChange(IZZ)V

    .line 3784
    const/4 v7, 0x1

    .line 3785
    goto :goto_0

    .line 3782
    .end local v1           #doReset:Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 3789
    .end local v10           #type:I
    :sswitch_4
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 3790
    .restart local v10       #type:I
    invoke-virtual {p0, v10}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDnsConfigurationChange(I)V

    .line 3791
    const/4 v7, 0x1

    .line 3792
    goto :goto_0

    .line 3798
    .end local v10           #type:I
    :sswitch_5
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3799
    .local v3, netType:I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 3800
    .local v0, condition:I
    invoke-virtual {p0, v3, v0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleInetConditionChange(II)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3801
    const/4 v7, 0x1

    goto :goto_0

    .line 3807
    .end local v0           #condition:I
    .end local v3           #netType:I
    :sswitch_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3808
    .restart local v3       #netType:I
    iget v9, p1, Landroid/os/Message;->arg2:I

    .line 3809
    .local v9, sequence:I
    invoke-virtual {p0, v3, v9}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleInetConditionHoldEnd(II)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3810
    const/4 v7, 0x1

    goto :goto_0

    .line 3816
    .end local v3           #netType:I
    .end local v9           #sequence:I
    :sswitch_7
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v12, "NetTransition wakelock is not needed"

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$10500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3817
    const/4 v7, 0x1

    .line 3818
    goto/16 :goto_0

    .line 3822
    :sswitch_8
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v12, "enforcing network preference not allowed in dual connectivity state"

    #calls: Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$10600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3823
    const/4 v7, 0x1

    .line 3824
    goto/16 :goto_0

    .line 3828
    :sswitch_9
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 3829
    .local v6, reason:Ljava/lang/String;
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 3830
    .restart local v10       #type:I
    invoke-virtual {p0, v10, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleConnectivitySwitch(ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 3831
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v11, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$10700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    .line 3832
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->transitionToOther()V

    .line 3834
    :cond_6
    const/4 v7, 0x1

    .line 3835
    goto/16 :goto_0

    .line 3839
    .end local v6           #reason:Ljava/lang/String;
    .end local v10           #type:I
    :sswitch_a
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 3840
    .local v4, primary:I
    iget v8, p1, Landroid/os/Message;->arg2:I

    .line 3841
    .local v8, secondary:I
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static {v11}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)I

    move-result v11

    if-ne v11, v4, :cond_7

    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->otherDefaultDnsNet:I
    invoke-static {v11}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)I

    move-result v11

    if-eq v11, v8, :cond_8

    .line 3844
    :cond_7
    invoke-virtual {p0, v4, v8}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->handleDnsReprioritization(II)V

    .line 3853
    :goto_2
    const/4 v7, 0x1

    .line 3854
    goto/16 :goto_0

    .line 3848
    :cond_8
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Dns is already prioritized for network p "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " s "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/internal/util/StateMachine;->logw(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$10800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_2

    .line 3858
    .end local v4           #primary:I
    .end local v8           #secondary:I
    :sswitch_b
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v11, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$10900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    .line 3859
    const/4 v7, 0x1

    .line 3860
    goto/16 :goto_0

    .line 3864
    :sswitch_c
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 3865
    .restart local v10       #type:I
    iget v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    if-ne v10, v11, :cond_9

    .line 3866
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v11, v11, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v12, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v12, v12, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v12}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v12

    iget v13, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    aget-object v12, v12, v13

    #calls: Lcom/android/server/QcConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService;->access$5700(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkStateTracker;)V

    .line 3870
    :goto_3
    const/4 v7, 0x1

    .line 3871
    goto/16 :goto_0

    .line 3868
    :cond_9
    iget-object v11, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v12, "ingoring subType change for other default net"

    #calls: Lcom/android/internal/util/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$11000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_3

    .line 3747
    :sswitch_data_0
    .sparse-switch
        0x1f6 -> :sswitch_a
        0x1f7 -> :sswitch_9
        0x1f8 -> :sswitch_b
        0x1389 -> :sswitch_1
        0x138a -> :sswitch_2
        0x138b -> :sswitch_3
        0x138c -> :sswitch_4
        0x138d -> :sswitch_0
        0x138e -> :sswitch_5
        0x138f -> :sswitch_6
        0x1390 -> :sswitch_8
        0x1392 -> :sswitch_7
        0x1393 -> :sswitch_c
    .end sparse-switch
.end method

.method protected removeDefaultRoutes(I)V
    .locals 9
    .parameter "netType"

    .prologue
    const/4 v8, 0x1

    .line 4601
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$18300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " removeDefaultRoutes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$18400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4602
    const/4 v5, -0x1

    if-ne p1, v5, :cond_2

    .line 4603
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v6, "removing default routes for all networks"

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$18500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4604
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->getActiveDefaults()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 4605
    .local v4, type:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService;->access$17000(Lcom/android/server/QcConnectivityService;)[Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v2, v5, v6

    .line 4606
    .local v2, p:Landroid/net/LinkProperties;
    if-eqz v2, :cond_0

    .line 4607
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 4608
    .local v3, r:Landroid/net/RouteInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4609
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    invoke-static {v5, v2, v3, v8}, Lcom/android/server/QcConnectivityService;->access$2300(Lcom/android/server/QcConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_0

    .line 4613
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #p:Landroid/net/LinkProperties;
    .end local v3           #r:Landroid/net/RouteInfo;
    .end local v4           #type:Ljava/lang/Integer;
    :cond_2
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4614
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removing default routes for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$18600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4615
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService;->access$17000(Lcom/android/server/QcConnectivityService;)[Landroid/net/LinkProperties;

    move-result-object v5

    aget-object v2, v5, p1

    .line 4616
    .restart local v2       #p:Landroid/net/LinkProperties;
    if-nez v2, :cond_4

    .line 4623
    .end local v2           #p:Landroid/net/LinkProperties;
    :cond_3
    return-void

    .line 4617
    .restart local v2       #p:Landroid/net/LinkProperties;
    :cond_4
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/RouteInfo;

    .line 4618
    .restart local v3       #r:Landroid/net/RouteInfo;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4619
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v5, v5, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    invoke-static {v5, v2, v3, v8}, Lcom/android/server/QcConnectivityService;->access$2300(Lcom/android/server/QcConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_1
.end method

.method protected runOnEnter()V
    .locals 3

    .prologue
    .line 3889
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$11300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " runOnEnter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$11400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3891
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mRouteAttributes:[Lcom/android/server/QcConnectivityService$RouteAttributes;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$6200(Lcom/android/server/QcConnectivityService;)[Lcom/android/server/QcConnectivityService$RouteAttributes;

    move-result-object v0

    iget v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/QcConnectivityService$RouteAttributes;->setMetric(I)V

    .line 3892
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mRouteAttributes:[Lcom/android/server/QcConnectivityService$RouteAttributes;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$6200(Lcom/android/server/QcConnectivityService;)[Lcom/android/server/QcConnectivityService$RouteAttributes;

    move-result-object v0

    iget v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    aget-object v0, v0, v1

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/server/QcConnectivityService$RouteAttributes;->setMetric(I)V

    .line 3893
    iget v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    invoke-virtual {p0, v0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->updateDefaultRouteMetric(I)V

    .line 3894
    return-void
.end method

.method protected sendConnectivitySwitchBroadcast(Ljava/lang/String;)V
    .locals 6
    .parameter "reason"

    .prologue
    .line 3912
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$11500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sendConnectivitySwitchBroadcast"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$11600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3914
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v3}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v3

    iget v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    aget-object v3, v3, v4

    invoke-interface {v3}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 3916
    .local v2, newNetInfo:Landroid/net/NetworkInfo;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3917
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "networkInfo"

    new-instance v4, Landroid/net/NetworkInfo;

    invoke-direct {v4, v2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3918
    const-string v3, "networkType"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3919
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 3920
    const-string v3, "reason"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3922
    :cond_0
    const-string v3, "isFailover"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3923
    const-string v3, "inetCondition"

    iget-object v4, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v4, v4, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mDefaultInetConditionPublished:I
    invoke-static {v4}, Lcom/android/server/QcConnectivityService;->access$11700(Lcom/android/server/QcConnectivityService;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3926
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3927
    .local v0, immediateIntent:Landroid/content/Intent;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3928
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v3, v0}, Lcom/android/server/QcConnectivityService;->access$4000(Lcom/android/server/QcConnectivityService;Landroid/content/Intent;)V

    .line 3929
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v3, v1}, Lcom/android/server/QcConnectivityService;->access$4000(Lcom/android/server/QcConnectivityService;Landroid/content/Intent;)V

    .line 3930
    return-void
.end method

.method protected abstract transitionToOther()V
.end method

.method protected updateDefaultRouteMetric(I)V
    .locals 7
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    .line 4581
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$18100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " updateDefaultRouteMetric"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$18200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4582
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;
    invoke-static {v3}, Lcom/android/server/QcConnectivityService;->access$17000(Lcom/android/server/QcConnectivityService;)[Landroid/net/LinkProperties;

    move-result-object v3

    aget-object v1, v3, p1

    .line 4583
    .local v1, lp:Landroid/net/LinkProperties;
    if-nez v1, :cond_1

    .line 4593
    :cond_0
    return-void

    .line 4585
    :cond_1
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 4586
    .local v2, r:Landroid/net/RouteInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/RouteInfo;->isHostRoute()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4587
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_3

    .line 4588
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mRouteAttributes:[Lcom/android/server/QcConnectivityService$RouteAttributes;
    invoke-static {v3}, Lcom/android/server/QcConnectivityService;->access$6200(Lcom/android/server/QcConnectivityService;)[Lcom/android/server/QcConnectivityService$RouteAttributes;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/server/QcConnectivityService$RouteAttributes;->getV6Metric()I

    move-result v3

    invoke-virtual {p0, v1, v2, v6, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;II)Z

    goto :goto_0

    .line 4590
    :cond_3
    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, v3, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mRouteAttributes:[Lcom/android/server/QcConnectivityService$RouteAttributes;
    invoke-static {v3}, Lcom/android/server/QcConnectivityService;->access$6200(Lcom/android/server/QcConnectivityService;)[Lcom/android/server/QcConnectivityService$RouteAttributes;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/server/QcConnectivityService$RouteAttributes;->getMetric()I

    move-result v3

    invoke-virtual {p0, v1, v2, v6, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;II)Z

    goto :goto_0
.end method

.method protected updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ZLcom/android/server/QcConnectivityService$RouteAttributes;Z)Z
    .locals 22
    .parameter "newLp"
    .parameter "curLp"
    .parameter "isLinkDefault"
    .parameter "ra"
    .parameter "exempt"

    .prologue
    .line 4703
    const/16 v17, 0x0

    .line 4704
    .local v17, routesToAdd:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    new-instance v4, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v4}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 4705
    .local v4, dnsDiff:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Ljava/net/InetAddress;>;"
    new-instance v15, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v15}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 4706
    .local v15, routeDiff:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    new-instance v11, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v11}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 4707
    .local v11, localAddrDiff:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    if-eqz p2, :cond_5

    .line 4709
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->compareAllRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v15

    .line 4710
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->compareDnses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v4

    .line 4711
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v11

    .line 4718
    :cond_0
    :goto_0
    iget-object v0, v15, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v18

    if-nez v18, :cond_1

    iget-object v0, v15, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v18

    if-eqz v18, :cond_6

    :cond_1
    const/16 v16, 0x1

    .line 4720
    .local v16, routesChanged:Z
    :goto_1
    iget-object v0, v15, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/RouteInfo;

    .line 4721
    .local v14, r:Landroid/net/RouteInfo;
    if-nez p3, :cond_3

    invoke-virtual {v14}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v18

    if-nez v18, :cond_4

    .line 4722
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, v19

    #calls: Lcom/android/server/QcConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    invoke-static {v0, v1, v14, v2}, Lcom/android/server/QcConnectivityService;->access$2300(Lcom/android/server/QcConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    .line 4724
    :cond_4
    if-nez p3, :cond_2

    .line 4726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, v19

    #calls: Lcom/android/server/QcConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    invoke-static {v0, v1, v14, v2}, Lcom/android/server/QcConnectivityService;->access$2300(Lcom/android/server/QcConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_2

    .line 4712
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v14           #r:Landroid/net/RouteInfo;
    .end local v16           #routesChanged:Z
    :cond_5
    if-eqz p1, :cond_0

    .line 4713
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    .line 4714
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    .line 4715
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    goto :goto_0

    .line 4718
    :cond_6
    const/16 v16, 0x0

    goto :goto_1

    .line 4731
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v16       #routesChanged:Z
    :cond_7
    if-eqz v16, :cond_9

    .line 4733
    if-eqz p2, :cond_8

    .line 4734
    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetAddress;

    .line 4735
    .local v13, oldDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    #calls: Lcom/android/server/QcConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    invoke-static {v0, v1, v13}, Lcom/android/server/QcConnectivityService;->access$19600(Lcom/android/server/QcConnectivityService;Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_3

    .line 4738
    .end local v13           #oldDns:Ljava/net/InetAddress;
    :cond_8
    if-eqz p1, :cond_b

    .line 4739
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/net/InetAddress;

    .line 4740
    .local v12, newDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, p5

    #calls: Lcom/android/server/QcConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z
    invoke-static {v0, v1, v12, v2}, Lcom/android/server/QcConnectivityService;->access$19700(Lcom/android/server/QcConnectivityService;Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z

    goto :goto_4

    .line 4745
    .end local v12           #newDns:Ljava/net/InetAddress;
    :cond_9
    iget-object v0, v4, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetAddress;

    .line 4746
    .restart local v13       #oldDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    #calls: Lcom/android/server/QcConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    invoke-static {v0, v1, v13}, Lcom/android/server/QcConnectivityService;->access$19600(Lcom/android/server/QcConnectivityService;Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_5

    .line 4748
    .end local v13           #oldDns:Ljava/net/InetAddress;
    :cond_a
    iget-object v0, v4, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/net/InetAddress;

    .line 4749
    .restart local v12       #newDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, p5

    #calls: Lcom/android/server/QcConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z
    invoke-static {v0, v1, v12, v2}, Lcom/android/server/QcConnectivityService;->access$19700(Lcom/android/server/QcConnectivityService;Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z

    goto :goto_6

    .line 4753
    .end local v12           #newDns:Ljava/net/InetAddress;
    :cond_b
    iget-object v0, v15, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/RouteInfo;

    .line 4754
    .restart local v14       #r:Landroid/net/RouteInfo;
    if-nez p3, :cond_c

    invoke-virtual {v14}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v18

    if-nez v18, :cond_e

    .line 4756
    :cond_c
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/net/Inet6Address;

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 4757
    const/16 v18, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/QcConnectivityService$RouteAttributes;->getV6Metric()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v14, v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;II)Z

    goto :goto_7

    .line 4759
    :cond_d
    const/16 v18, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/QcConnectivityService$RouteAttributes;->getMetric()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v14, v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;II)Z

    goto :goto_7

    .line 4762
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p5

    #calls: Lcom/android/server/QcConnectivityService;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;ZZ)Z
    invoke-static {v0, v1, v14, v2, v3}, Lcom/android/server/QcConnectivityService;->access$19800(Lcom/android/server/QcConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;ZZ)Z

    .line 4766
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    .line 4767
    .local v9, ifaceName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mRoutesLock:Ljava/lang/Object;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$19900(Lcom/android/server/QcConnectivityService;)Ljava/lang/Object;

    move-result-object v19

    monitor-enter v19

    .line 4768
    :try_start_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mAddedRoutes:Ljava/util/Collection;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$19300(Lcom/android/server/QcConnectivityService;)Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_f

    .line 4769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Removing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " for interface "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$20000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4771
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$13100(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v9, v14}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4777
    :cond_f
    :goto_8
    :try_start_2
    monitor-exit v19

    goto/16 :goto_7

    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v18

    .line 4772
    :catch_0
    move-exception v5

    .line 4774
    .local v5, e:Ljava/lang/Exception;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception trying to remove a route: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    #calls: Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$20100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    .line 4781
    .end local v5           #e:Ljava/lang/Exception;
    .end local v9           #ifaceName:Ljava/lang/String;
    .end local v14           #r:Landroid/net/RouteInfo;
    :cond_10
    iget-object v0, v11, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v18

    if-eqz v18, :cond_11

    .line 4782
    iget-object v0, v11, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/LinkAddress;

    .line 4783
    .local v10, la:Landroid/net/LinkAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Removing src route for:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$20200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 4785
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$13100(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v18

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v19

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/QcConnectivityService$RouteAttributes;->getTableId()I

    move-result v20

    invoke-interface/range {v18 .. v20}, Landroid/os/INetworkManagementService;->delSrcRoute([BI)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_9

    .line 4786
    :catch_1
    move-exception v5

    .line 4787
    .restart local v5       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception while trying to remove src route: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$20300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_9

    .line 4792
    .end local v5           #e:Ljava/lang/Exception;
    .end local v10           #la:Landroid/net/LinkAddress;
    :cond_11
    iget-object v0, v11, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v18

    if-eqz v18, :cond_16

    .line 4793
    const/4 v6, 0x0

    .local v6, gw4Addr:Ljava/net/InetAddress;
    const/4 v7, 0x0

    .line 4794
    .local v7, gw6Addr:Ljava/net/InetAddress;
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    .line 4795
    .restart local v9       #ifaceName:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_16

    .line 4796
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_12
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/RouteInfo;

    .line 4797
    .restart local v14       #r:Landroid/net/RouteInfo;
    invoke-virtual {v14}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v18

    if-eqz v18, :cond_12

    .line 4798
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v18, v0

    if-eqz v18, :cond_13

    .line 4799
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    goto :goto_a

    .line 4801
    :cond_13
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v7

    goto :goto_a

    .line 4803
    .end local v14           #r:Landroid/net/RouteInfo;
    :cond_14
    iget-object v0, v11, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/LinkAddress;

    .line 4805
    .restart local v10       #la:Landroid/net/LinkAddress;
    :try_start_5
    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v18, v0

    if-eqz v18, :cond_15

    .line 4806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$13100(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v18

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v19

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v20

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/QcConnectivityService$RouteAttributes;->getTableId()I

    move-result v21

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-interface {v0, v9, v1, v2, v3}, Landroid/os/INetworkManagementService;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_b

    .line 4812
    :catch_2
    move-exception v5

    .line 4814
    .restart local v5       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception while trying to add src route: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    #calls: Lcom/android/internal/util/StateMachine;->loge(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$20400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_b

    .line 4809
    .end local v5           #e:Ljava/lang/Exception;
    :cond_15
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->access$13100(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v18

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v19

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v20

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/QcConnectivityService$RouteAttributes;->getTableId()I

    move-result v21

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-interface {v0, v9, v1, v2, v3}, Landroid/os/INetworkManagementService;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_b

    .line 4819
    .end local v6           #gw4Addr:Ljava/net/InetAddress;
    .end local v7           #gw6Addr:Ljava/net/InetAddress;
    .end local v9           #ifaceName:Ljava/lang/String;
    .end local v10           #la:Landroid/net/LinkAddress;
    :cond_16
    return v16
.end method
