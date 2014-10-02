.class public abstract Lcom/viber/voip/stickers/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field protected a:Lcom/viber/voip/stickers/d/b;

.field private c:Landroid/os/Handler;

.field private d:Lcom/viber/voip/stickers/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/viber/voip/stickers/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/b/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/stickers/d/b;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/b/a;->c:Landroid/os/Handler;

    .line 28
    new-instance v0, Lcom/viber/voip/stickers/b/b;

    invoke-direct {v0, p0}, Lcom/viber/voip/stickers/b/b;-><init>(Lcom/viber/voip/stickers/b/a;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/b/a;->a:Lcom/viber/voip/stickers/d/b;

    .line 22
    iput-object p1, p0, Lcom/viber/voip/stickers/b/a;->d:Lcom/viber/voip/stickers/d/b;

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/stickers/b/a;)Lcom/viber/voip/stickers/d/b;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/viber/voip/stickers/b/a;->d:Lcom/viber/voip/stickers/d/b;

    return-object v0
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/stickers/b/a;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/viber/voip/stickers/b/a;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public abstract a(I)V
.end method
