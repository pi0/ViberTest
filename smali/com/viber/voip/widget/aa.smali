.class public Lcom/viber/voip/widget/aa;
.super Lcom/viber/voip/ui/ViberEditText;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/widget/ae;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/ViberEditText;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/widget/aa;)Lcom/viber/voip/widget/ae;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/viber/voip/widget/aa;->a:Lcom/viber/voip/widget/ae;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 53
    new-instance v0, Lcom/viber/voip/widget/ac;

    invoke-direct {v0, p0}, Lcom/viber/voip/widget/ac;-><init>(Lcom/viber/voip/widget/aa;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/aa;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 82
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v0, Lcom/viber/voip/widget/ad;

    invoke-direct {v0, p0}, Lcom/viber/voip/widget/ad;-><init>(Lcom/viber/voip/widget/aa;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/aa;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    goto :goto_0
.end method

.method protected onSelectionChanged(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/viber/voip/ui/ViberEditText;->onSelectionChanged(II)V

    .line 40
    iget-object v0, p0, Lcom/viber/voip/widget/aa;->a:Lcom/viber/voip/widget/ae;

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/viber/voip/widget/ab;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/widget/ab;-><init>(Lcom/viber/voip/widget/aa;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    :cond_0
    return-void
.end method

.method public setOnSelectionChangedListener(Lcom/viber/voip/widget/ae;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/viber/voip/widget/aa;->a:Lcom/viber/voip/widget/ae;

    .line 35
    return-void
.end method
