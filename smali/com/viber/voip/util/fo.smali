.class public final Lcom/viber/voip/util/fo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/net/Uri;

.field public b:Landroid/os/Handler;

.field public c:[Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:[Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Landroid/content/ContentValues;

.field public j:Ljava/lang/Exception;

.field public k:Z

.field public l:Z

.field public m:Z

.field n:Lcom/viber/voip/util/fl;

.field o:Lcom/viber/voip/util/fk;

.field p:Lcom/viber/voip/util/fn;

.field q:Lcom/viber/voip/util/fh;

.field r:Lcom/viber/voip/util/ff;

.field s:Lcom/viber/voip/util/fg;

.field t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field u:[Landroid/content/ContentValues;

.field v:Ljava/lang/Object;

.field w:Lcom/viber/voip/util/fj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/viber/voip/util/fj",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-boolean v0, p0, Lcom/viber/voip/util/fo;->k:Z

    .line 173
    iput-boolean v0, p0, Lcom/viber/voip/util/fo;->l:Z

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/util/fo;->m:Z

    return-void
.end method
