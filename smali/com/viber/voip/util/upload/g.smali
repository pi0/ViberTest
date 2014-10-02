.class public Lcom/viber/voip/util/upload/g;
.super Lcom/viber/voip/util/upload/e;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 229
    sget-object v0, Lcom/viber/voip/util/upload/f;->a:Lcom/viber/voip/util/upload/f;

    invoke-direct {p0, v0}, Lcom/viber/voip/util/upload/e;-><init>(Lcom/viber/voip/util/upload/f;)V

    .line 230
    iput-object p1, p0, Lcom/viber/voip/util/upload/g;->a:Ljava/lang/String;

    .line 231
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/viber/voip/util/upload/g;->a:Ljava/lang/String;

    return-object v0
.end method
