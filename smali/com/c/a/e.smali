.class public Lcom/c/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/c/a/g;


# instance fields
.field public final a:D

.field public final b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-wide p1, p0, Lcom/c/a/e;->a:D

    .line 240
    iput-wide p3, p0, Lcom/c/a/e;->b:D

    .line 241
    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/c/a/e;->a:D

    return-wide v0
.end method

.method public b()D
    .locals 2

    .prologue
    .line 248
    iget-wide v0, p0, Lcom/c/a/e;->b:D

    return-wide v0
.end method
