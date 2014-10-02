.class public Lcom/viber/voip/stickers/b/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput p1, p0, Lcom/viber/voip/stickers/b/n;->a:I

    .line 209
    iput p2, p0, Lcom/viber/voip/stickers/b/n;->b:I

    .line 210
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/viber/voip/stickers/b/n;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/viber/voip/stickers/b/n;->b:I

    return v0
.end method
