.class public Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;
.super Ljava/lang/Object;
.source "SmartFaceViewDelegate.java"


# instance fields
.field private extSmartScreen:Lcom/android/internal/policy/impl/ExtSmartScreen;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mManagerWapper:Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;)V
    .locals 1
    .parameter "mContext"
    .parameter "mHandler"
    .parameter "mManagerWapper"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->mHandler:Landroid/os/Handler;

    .line 36
    iput-object p3, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->mManagerWapper:Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;

    .line 37
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->mWindowManager:Landroid/view/WindowManager;

    .line 39
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private adjustStatusBarLocked(Z)V
    .locals 2
    .parameter "isLocked"

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 105
    .local v0, flags:I
    if-eqz p1, :cond_1

    .line 106
    const/high16 v1, 0x1

    or-int/2addr v0, v1

    .line 108
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->mManagerWapper:Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    const/high16 v1, 0x100

    or-int/2addr v0, v1

    .line 110
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->mManagerWapper:Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const/high16 v1, 0x8

    or-int/2addr v0, v1

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private createSmartFaceView()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->extSmartScreen:Lcom/android/internal/policy/impl/ExtSmartScreen;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/smartface/viewloader/ExtSmartScreenLoader;->getSmartScreen(Landroid/content/Context;)Lcom/android/internal/policy/impl/ExtSmartScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->extSmartScreen:Lcom/android/internal/policy/impl/ExtSmartScreen;

    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->extSmartScreen:Lcom/android/internal/policy/impl/ExtSmartScreen;

    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->extSmartScreen:Lcom/android/internal/policy/impl/ExtSmartScreen;

    new-instance v1, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate$1;-><init>(Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/ExtSmartScreen;->setCallback(Lcom/android/internal/policy/impl/ExtSmartScreenCallback;)V

    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->extSmartScreen:Lcom/android/internal/policy/impl/ExtSmartScreen;

    new-instance v1, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate$2;-><init>(Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->extSmartScreen:Lcom/android/internal/policy/impl/ExtSmartScreen;

    new-instance v1, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate$3;-><init>(Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method

.method private getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 84
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7ea

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 85
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 86
    const v1, 0x100800

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 88
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 89
    return-object v0
.end method


# virtual methods
.method public dismissSmartFaceView()V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->createSmartFaceView()V

    .line 94
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->extSmartScreen:Lcom/android/internal/policy/impl/ExtSmartScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->extSmartScreen:Lcom/android/internal/policy/impl/ExtSmartScreen;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->extSmartScreen:Lcom/android/internal/policy/impl/ExtSmartScreen;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 97
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->adjustStatusBarLocked(Z)V

    .line 98
    return-void
.end method

.method public showSmartFaceView()V
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->createSmartFaceView()V

    .line 75
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->extSmartScreen:Lcom/android/internal/policy/impl/ExtSmartScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->extSmartScreen:Lcom/android/internal/policy/impl/ExtSmartScreen;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->extSmartScreen:Lcom/android/internal/policy/impl/ExtSmartScreen;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/smartface/viewloader/SmartFaceViewDelegate;->adjustStatusBarLocked(Z)V

    goto :goto_0
.end method
