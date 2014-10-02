.class public Lcom/viber/voip/messages/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/viber/voip/messages/f;->a:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lcom/viber/voip/messages/f;->b:Ljava/lang/String;

    .line 119
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/viber/voip/messages/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/viber/voip/messages/f;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/viber/voip/messages/f;->a:Ljava/lang/String;

    check-cast p1, Lcom/viber/voip/messages/f;

    iget-object v1, p1, Lcom/viber/voip/messages/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 148
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/viber/voip/messages/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/f;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
