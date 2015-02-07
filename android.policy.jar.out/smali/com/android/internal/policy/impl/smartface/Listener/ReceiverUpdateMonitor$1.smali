.class Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "ReceiverUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    iget-object v4, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->access$000(Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->isSmartFaceWindowEnable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    const-string v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, state:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->access$100(Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->access$100(Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 64
    .end local v3           #state:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const-string v4, "com.nubia.smartface.state.changed"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 48
    iget-object v4, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->access$000(Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/policy/impl/smartface/util/SysSettingsUtils;->isSmartFaceWindowEnable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    const-string v4, "packageName"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, pkgName:Ljava/lang/String;
    const-string v4, "display"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 52
    .local v2, show:Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;

    #calls: Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->putAppViewMap(Ljava/lang/String;Z)V
    invoke-static {v4, v1, v2}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->access$200(Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;Ljava/lang/String;Z)V

    .line 53
    iget-object v4, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->access$100(Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->access$100(Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 57
    .end local v1           #pkgName:Ljava/lang/String;
    .end local v2           #show:Z
    :cond_2
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 59
    iget-object v4, p0, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor$1;->this$0:Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->cbHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;->access$300(Lcom/android/internal/policy/impl/smartface/Listener/ReceiverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 61
    :cond_3
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0
.end method
