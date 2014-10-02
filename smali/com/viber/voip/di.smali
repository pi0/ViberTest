.class Lcom/viber/voip/di;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/viber/voip/dk;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z

.field public final f:I

.field public final g:I


# direct methods
.method constructor <init>(Lcom/viber/voip/dk;IIILjava/lang/String;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/viber/voip/di;->a:Lcom/viber/voip/dk;

    .line 56
    iput p2, p0, Lcom/viber/voip/di;->b:I

    .line 57
    iput-object p5, p0, Lcom/viber/voip/di;->c:Ljava/lang/String;

    .line 58
    iput-boolean p6, p0, Lcom/viber/voip/di;->d:Z

    .line 59
    iput-boolean p7, p0, Lcom/viber/voip/di;->e:Z

    .line 60
    iput p3, p0, Lcom/viber/voip/di;->f:I

    .line 61
    iput p4, p0, Lcom/viber/voip/di;->g:I

    .line 62
    return-void
.end method

.method constructor <init>(Lcom/viber/voip/dk;ILjava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 64
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/di;-><init>(Lcom/viber/voip/dk;IIILjava/lang/String;ZZ)V

    .line 65
    return-void
.end method
