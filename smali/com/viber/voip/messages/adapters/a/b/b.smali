.class public Lcom/viber/voip/messages/adapters/a/b/b;
.super Lcom/viber/voip/messages/adapters/a/b/a;
.source "SourceFile"


# instance fields
.field private final c:Landroid/content/res/ColorStateList;

.field private final d:Landroid/content/res/ColorStateList;

.field private final e:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/messages/adapters/a/b/a;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;Z)V

    .line 17
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/b;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/b;->c:Landroid/content/res/ColorStateList;

    .line 18
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/b;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/b;->d:Landroid/content/res/ColorStateList;

    .line 19
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/b;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/b;->e:Landroid/content/res/ColorStateList;

    .line 20
    return-void
.end method


# virtual methods
.method public a(ZZ)I
    .locals 1
    .parameter
    .parameter

    .prologue
    const v0, 0x7f0203ad

    .line 24
    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p2, :cond_0

    const v0, 0x7f0203ac

    goto :goto_0
.end method

.method public b(ZZ)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/b/b;->d:Landroid/content/res/ColorStateList;

    return-object v0
.end method
