.class Lcom/android/server/QcConnectivityService$5;
.super Lcom/android/server/QcConnectivityService$CheckMp$CallBack;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/QcConnectivityService;->checkMobileProvisioning(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/QcConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/QcConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 5740
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$5;->this$0:Lcom/android/server/QcConnectivityService;

    invoke-direct {p0}, Lcom/android/server/QcConnectivityService$CheckMp$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method onComplete(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 5743
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckMp.onComplete: result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$300(Ljava/lang/String;)V

    .line 5744
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$5;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$900(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v2

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 5746
    .local v0, ni:Landroid/net/NetworkInfo;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 5783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckMp.onComplete: ignore unexpected result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$21300(Ljava/lang/String;)V

    .line 5787
    :goto_0
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$5;->this$0:Lcom/android/server/QcConnectivityService;

    #getter for: Lcom/android/server/QcConnectivityService;->mIsCheckingMobileProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$21400(Lcom/android/server/QcConnectivityService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5788
    return-void

    .line 5751
    :pswitch_0
    const-string v2, "CheckMp.onComplete: ignore, connected or no connection"

    #calls: Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$300(Ljava/lang/String;)V

    goto :goto_0

    .line 5755
    :pswitch_1
    const-string v2, "CheckMp.onComplete: warm sim"

    #calls: Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$300(Ljava/lang/String;)V

    .line 5756
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$5;->this$0:Lcom/android/server/QcConnectivityService;

    invoke-virtual {v2}, Lcom/android/server/QcConnectivityService;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v1

    .line 5757
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5758
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$5;->this$0:Lcom/android/server/QcConnectivityService;

    invoke-virtual {v2}, Lcom/android/server/QcConnectivityService;->getMobileRedirectedProvisioningUrl()Ljava/lang/String;

    move-result-object v1

    .line 5760
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckMp.onComplete: warm (redirected), url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$300(Ljava/lang/String;)V

    goto :goto_0

    .line 5766
    :cond_1
    const-string v2, "CheckMp.onComplete: warm (redirected), no url"

    #calls: Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$300(Ljava/lang/String;)V

    goto :goto_0

    .line 5771
    .end local v1           #url:Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$5;->this$0:Lcom/android/server/QcConnectivityService;

    invoke-virtual {v2}, Lcom/android/server/QcConnectivityService;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v1

    .line 5772
    .restart local v1       #url:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckMp.onComplete: warm (no dns/tcp), url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$300(Ljava/lang/String;)V

    goto :goto_0

    .line 5778
    :cond_2
    const-string v2, "CheckMp.onComplete: warm (no dns/tcp), no url"

    #calls: Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->access$300(Ljava/lang/String;)V

    goto :goto_0

    .line 5746
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
