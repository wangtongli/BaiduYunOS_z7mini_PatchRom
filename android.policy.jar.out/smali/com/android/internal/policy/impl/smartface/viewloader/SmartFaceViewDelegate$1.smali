.class Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate$1;
.super Ljava/lang/Object;
.source "SmartFaceViewDelegate.java"

# interfaces
.implements Lcom/android/internal/policy/impl/ExtSmartScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->createSmartFaceView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate$1;->this$0:Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public userActivity()V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate$1;->this$0:Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;

    #getter for: Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->access$000(Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate$1;->this$0:Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;

    #getter for: Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->access$000(Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 54
    return-void
.end method
