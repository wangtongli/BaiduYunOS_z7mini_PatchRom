.class Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate$3;
.super Ljava/lang/Object;
.source "SmartFaceViewDelegate.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 63
    iput-object p1, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate$3;->this$0:Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method
