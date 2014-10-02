.class public Lcom/viber/voip/pixie/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DEFAULT_LOCAL_PROXY_PORT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x1e5a

    sput v0, Lcom/viber/voip/pixie/Config;->DEFAULT_LOCAL_PROXY_PORT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
