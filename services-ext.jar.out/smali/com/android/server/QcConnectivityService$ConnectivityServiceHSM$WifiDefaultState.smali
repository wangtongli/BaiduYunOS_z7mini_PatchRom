.class final Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$WifiDefaultState;
.super Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;


# direct methods
.method public constructor <init>(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)V
    .locals 1
    .parameter

    .prologue
    .line 3699
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;-><init>(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)V

    .line 3700
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->myDefaultNet:I

    .line 3701
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->otherDefaultNet:I

    .line 3702
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 3706
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityServiceHSM entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$9000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$9100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3707
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;->runOnEnter()V

    .line 3708
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 3712
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityServiceHSM leaving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$9200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$9300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3713
    return-void
.end method

.method protected transitionToOther()V
    .locals 3

    .prologue
    .line 3717
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$9400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " transitionToOther"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$9500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3718
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    iget-object v1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$WifiDefaultState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #getter for: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->mMobileDefaultState:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;
    invoke-static {v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$7900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DualConnectivityState;

    move-result-object v1

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$9600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Lcom/android/internal/util/IState;)V

    .line 3719
    return-void
.end method
