.class public Lcom/viber/voip/messages/conversation/ui/ct;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/ct;->a:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/viber/voip/messages/conversation/ui/ct;->b:I

    .line 15
    iput-boolean p3, p0, Lcom/viber/voip/messages/conversation/ui/ct;->c:Z

    .line 16
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ct;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/viber/voip/messages/conversation/ui/ct;->b:I

    invoke-static {v0, p1}, Lcom/viber/jni/ClientMessages$DeviceTypes;->toString(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/ct;->c:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ct;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/viber/voip/messages/conversation/ui/ct;->b:I

    invoke-static {v0}, Lcom/viber/jni/ClientMessages$DeviceTypes;->isVisibleInTyping(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
