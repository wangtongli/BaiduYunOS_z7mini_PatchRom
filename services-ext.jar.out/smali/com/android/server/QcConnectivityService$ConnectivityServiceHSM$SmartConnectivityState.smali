.class final Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;
.super Lcom/android/internal/util/State;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmartConnectivityState"
.end annotation


# instance fields
.field private avoidUnsuitableWifi:Z

.field final synthetic this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;


# direct methods
.method public constructor <init>(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)V
    .locals 1
    .parameter

    .prologue
    .line 3552
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 3553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->avoidUnsuitableWifi:Z

    .line 3554
    return-void
.end method

.method private handleCaptivePortalTrackerCheck(Landroid/net/NetworkInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 3588
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Captive portal check "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3589
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 3590
    .local v1, type:I
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    aget-object v0, v2, v1

    .line 3591
    .local v0, thisNet:Landroid/net/NetworkStateTracker;
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3592
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$800(Lcom/android/server/QcConnectivityService;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$800(Lcom/android/server/QcConnectivityService;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 3593
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->isNewNetTypePreferredOverCurrentNetType(I)Z
    invoke-static {v2, v1}, Lcom/android/server/QcConnectivityService;->access$6900(Lcom/android/server/QcConnectivityService;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3594
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Captive check on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$7000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3595
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mCaptivePortalTracker:Landroid/net/CaptivePortalTracker;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$7100(Lcom/android/server/QcConnectivityService;)Landroid/net/CaptivePortalTracker;

    move-result-object v2

    new-instance v3, Landroid/net/NetworkInfo;

    invoke-direct {v3, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v2, v3}, Landroid/net/CaptivePortalTracker;->detectCaptivePortal(Landroid/net/NetworkInfo;)V

    .line 3603
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->captivePortalCheckComplete()V

    .line 3604
    return-void

    .line 3597
    :cond_1
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Captive portal check skipped on low priority net "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$7200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isNetworkSimultaneitySupported(Landroid/net/NetworkInfo;)Z
    .locals 4
    .parameter "info"

    .prologue
    .line 3576
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 3577
    .local v1, type:I
    const/4 v0, 0x0

    .line 3578
    .local v0, ret:Z
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3579
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->add(I)Z

    .line 3580
    iget-boolean v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->avoidUnsuitableWifi:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 3581
    const/4 v0, 0x1

    .line 3584
    :cond_0
    return v0
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3558
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityServiceHSM entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3560
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mRouteAttributes:[Lcom/android/server/QcConnectivityService$RouteAttributes;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$6200(Lcom/android/server/QcConnectivityService;)[Lcom/android/server/QcConnectivityService$RouteAttributes;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Lcom/android/server/QcConnectivityService$RouteAttributes;->setMetric(I)V

    .line 3561
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mRouteAttributes:[Lcom/android/server/QcConnectivityService$RouteAttributes;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->access$6200(Lcom/android/server/QcConnectivityService;)[Lcom/android/server/QcConnectivityService$RouteAttributes;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Lcom/android/server/QcConnectivityService$RouteAttributes;->setMetric(I)V

    .line 3563
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #setter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->myDefaultDnsNet:I
    invoke-static {v0, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6302(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;I)I

    .line 3564
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const/4 v1, -0x1

    #setter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->otherDefaultDnsNet:I
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6402(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;I)I

    .line 3565
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 3569
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityServiceHSM leaving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3570
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3608
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$7300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".processMessage what="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v5}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$7400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3609
    const/4 v0, 0x0

    .line 3610
    .local v0, info:Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 3611
    .local v1, ret:Z
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 3659
    const/4 v1, 0x0

    .line 3661
    :cond_0
    :goto_0
    return v1

    .line 3614
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #info:Landroid/net/NetworkInfo;
    check-cast v0, Landroid/net/NetworkInfo;

    .line 3615
    .restart local v0       #info:Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->add(I)Z

    .line 3616
    invoke-direct {p0, v0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->isNetworkSimultaneitySupported(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3617
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v4, "Dual Connectivity Mode detected"

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$7500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3618
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$7600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    .line 3619
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$800(Lcom/android/server/QcConnectivityService;)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 3620
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mWifiDefaultState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
    invoke-static {v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$7700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    move-result-object v3

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$7800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    .line 3624
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 3622
    :cond_1
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v3, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mMobileDefaultState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
    invoke-static {v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$7900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    move-result-object v3

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$8000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 3630
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #info:Landroid/net/NetworkInfo;
    check-cast v0, Landroid/net/NetworkInfo;

    .line 3631
    .restart local v0       #info:Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mConnectedDefaultNetworks:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$ConnectedDefaultNetworkSet;->remove(I)Z

    goto :goto_0

    .line 3636
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #info:Landroid/net/NetworkInfo;
    check-cast v0, Landroid/net/NetworkInfo;

    .line 3637
    .restart local v0       #info:Landroid/net/NetworkInfo;
    invoke-direct {p0, v0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->handleCaptivePortalTrackerCheck(Landroid/net/NetworkInfo;)V

    .line 3638
    const/4 v1, 0x1

    .line 3639
    goto :goto_0

    .line 3643
    :sswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->avoidUnsuitableWifi:Z

    .line 3644
    iget-object v5, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dual network support "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->avoidUnsuitableWifi:Z

    if-eqz v2, :cond_4

    const-string v2, "enabled"

    :goto_3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v5, v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$8100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3645
    iget-boolean v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->avoidUnsuitableWifi:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$800(Lcom/android/server/QcConnectivityService;)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 3646
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 3648
    :cond_2
    const/4 v1, 0x1

    .line 3649
    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 3643
    goto :goto_2

    .line 3644
    :cond_4
    const-string v2, "disabled"

    goto :goto_3

    .line 3653
    :sswitch_4
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v2, v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$800(Lcom/android/server/QcConnectivityService;)I

    move-result v2

    if-nez v2, :cond_0

    .line 3654
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$SmartConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    const-string v3, "NetTransition wakelock is not needed"

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$8200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3655
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 3611
    :sswitch_data_0
    .sparse-switch
        0x1f8 -> :sswitch_3
        0x1389 -> :sswitch_0
        0x138a -> :sswitch_1
        0x1391 -> :sswitch_2
        0x1392 -> :sswitch_4
    .end sparse-switch
.end method
