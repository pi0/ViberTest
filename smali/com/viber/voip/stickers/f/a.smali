.class public Lcom/viber/voip/stickers/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Landroid/graphics/Picture;

.field public c:Landroid/graphics/Picture;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/viber/voip/stickers/f/a;-><init>(JLandroid/graphics/Picture;Landroid/graphics/Picture;)V

    .line 16
    return-void
.end method

.method public constructor <init>(JLandroid/graphics/Picture;Landroid/graphics/Picture;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/viber/voip/stickers/f/a;->a:J

    .line 20
    iput-object p3, p0, Lcom/viber/voip/stickers/f/a;->b:Landroid/graphics/Picture;

    .line 21
    iput-object p4, p0, Lcom/viber/voip/stickers/f/a;->c:Landroid/graphics/Picture;

    .line 22
    return-void
.end method
