.class public Lcom/viber/voip/calls/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/viber/voip/calls/t;->a:Ljava/lang/String;

    .line 64
    iput p2, p0, Lcom/viber/voip/calls/t;->b:I

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/viber/voip/calls/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/calls/t;-><init>(Ljava/lang/String;I)V

    return-void
.end method
