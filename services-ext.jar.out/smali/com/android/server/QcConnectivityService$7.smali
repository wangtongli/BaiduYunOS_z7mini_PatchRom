.class Lcom/android/server/QcConnectivityService$7;
.super Landroid/content/BroadcastReceiver;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService;
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
    .line 6468
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$7;->this$0:Lcom/android/server/QcConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v3, -0x2710

    .line 6471
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6472
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 6473
    .local v1, userId:I
    if-ne v1, v3, :cond_1

    .line 6480
    :cond_0
    :goto_0
    return-void

    .line 6475
    :cond_1
    const-string v2, "android.intent.action.USER_STARTING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6476
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$7;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->onUserStart(I)V
    invoke-static {v2, v1}, Lcom/android/server/QcConnectivityService;->access$22100(Lcom/android/server/QcConnectivityService;I)V

    goto :goto_0

    .line 6477
    :cond_2
    const-string v2, "android.intent.action.USER_STOPPING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6478
    iget-object v2, p0, Lcom/android/server/QcConnectivityService$7;->this$0:Lcom/android/server/QcConnectivityService;

    #calls: Lcom/android/server/QcConnectivityService;->onUserStop(I)V
    invoke-static {v2, v1}, Lcom/android/server/QcConnectivityService;->access$22200(Lcom/android/server/QcConnectivityService;I)V

    goto :goto_0
.end method
